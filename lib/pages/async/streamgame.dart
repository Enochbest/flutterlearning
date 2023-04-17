import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

class StreamGamePage extends StatefulWidget {
  const StreamGamePage({Key? key}) : super(key: key);

  @override
  State<StreamGamePage> createState() => _StreamGamePageState();
}

class _StreamGamePageState extends State<StreamGamePage> {
  final StreamController <int>_inputController = StreamController.broadcast();
  final StreamController <int>_scoreController = StreamController.broadcast();
  int num= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: StreamBuilder(
            stream: _scoreController.stream,
            builder: (context,snapshot){
              if(snapshot.hasData){
                num +=  snapshot.data as int;
                return Text("得分:$num");
              }
              if(snapshot.hasError){
                return Text("数据:${snapshot.error}");
              }
              return const Text('监听中...');
            }
        )
      ),
      body: Stack(
        children:  [
           ...List.generate(4, (index) => Game(inputController: _inputController, scoreConroller: _scoreController,),),
          MyKeyBoard(inputController: _inputController,)
        ],
      ),
    );
  }
}

//键盘组件
class MyKeyBoard extends StatelessWidget {
  final StreamController inputController;
  const MyKeyBoard({Key? key, required this.inputController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: GridView.count(
          shrinkWrap: true,
          childAspectRatio: 5/3,
          crossAxisCount: 3,
          children: List.generate(9, (index) =>
              TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder()
                    ),
                    backgroundColor:MaterialStateProperty.all(Colors.primaries[index]),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: (){
                    inputController.add(index+1);
                  },
                  child: Text("${index+1}",style: Theme.of(context).textTheme.headline4,)
              )
          ),
        ),
      ),
    );
  }
}

//算数动画
class Game extends StatefulWidget {
  final StreamController inputController;
  final StreamController scoreConroller;

  const Game({Key? key, required this.inputController, required this.scoreConroller}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> with SingleTickerProviderStateMixin {
  late int a,b;
  late double x;
  late Color color;
  late AnimationController _animationController;
  void reset(){
    a = Random().nextInt(5)+1;
    b = Random().nextInt(5);
    x = Random().nextDouble()*320;
    color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reset();
    _animationController = AnimationController(vsync: this,duration:  Duration(milliseconds: Random().nextInt(5000)+5000))..forward();
    _animationController.addStatusListener((status){
      reset();
      if(status==AnimationStatus.completed){
        _animationController.forward(from: 0.0);
        widget.scoreConroller.add(-1);

      }
    });
    //监听键盘俺按键
    widget.inputController.stream.listen((event) {
      print(event);
      if(a+b==event){
        _animationController.forward(from: 0.0);
        widget.scoreConroller.add(3);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _animationController, builder: (context,child){
      return Positioned(
          top: Tween(begin: -50.0,end: 500.0).animate(_animationController).value,
          left: x,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(18)
            ),
            child:  Text('$a+$b=?',style: const TextStyle(
                fontSize: 30
            ),),
          )
      );
    });
  }
}

