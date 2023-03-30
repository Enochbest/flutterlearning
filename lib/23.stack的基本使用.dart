
import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Flutter App'),centerTitle: true,),
      body: const Myapp(),
    ),
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    title: 'Hello Demo',
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.black,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.yellow,
        ),
        const Text('665666')
      ],
    );
  }
}




