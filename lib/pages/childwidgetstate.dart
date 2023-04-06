import 'package:flutter/material.dart';


//父组件
class ChildPageState extends StatefulWidget {
  const ChildPageState({Key? key}) : super(key: key);

  @override
  State<ChildPageState> createState() => _ChildPageStateState();
}

class _ChildPageStateState extends State<ChildPageState> {
  final GlobalKey _globalKey1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('子组件状态获取'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //获取子组件的属性
          var boxState = _globalKey1.currentState as _BoxState;
          //获取子组件的属性
          print(boxState._count);
          setState(() {
            boxState._count ++;
          });
          //获取子组件里的方法
          boxState.run();
          //获取子组件里的widget
          var boxWidget = _globalKey1.currentWidget as Box;
          print(boxWidget.color);

          // setState(() {
          //   boxWidget.color = Colors.blue;
          // });


          //获取子组件里的渲染属性
          var renderBox = _globalKey1.currentContext!.findRenderObject() as RenderBox;
          print(renderBox.size);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Box(color: Colors.red,key: _globalKey1,),
      ),
    );
  }
}


//子组件
class Box extends StatefulWidget {
  final Color color;
  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  void run (){
    print('子组件的方法调用了');
  }
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
