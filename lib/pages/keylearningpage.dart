import 'package:flutter/material.dart';

class KeyLearningPage extends StatefulWidget {
  const KeyLearningPage({Key? key}) : super(key: key);

  @override
  State<KeyLearningPage> createState() => _KeyLearningPageState();
}

class _KeyLearningPageState extends State<KeyLearningPage> {
  List<Widget> list = [];
  final GlobalKey _globalKey1 = GlobalKey();
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     list =[
       Box(color: Colors.red,key: _globalKey1,),
       Box(color: Colors.yellow,key:_globalKey2),
       Box(color: Colors.blue,key: _globalKey3),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('组件key学习'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.shuffle();
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: MediaQuery.of(context).orientation==Orientation.portrait?Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list
        ) : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list
        ),
      ),
    );
  }
}


class Box extends StatefulWidget {
  final Color color;
  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(widget.color)
        ),
        onPressed: (){
          setState(() {
            _count++;
          });
        },
        child: Text("$_count",style: Theme.of(context).textTheme.headline2,),
      ),
    );
  }
}

