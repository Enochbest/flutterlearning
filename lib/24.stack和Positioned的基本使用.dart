
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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(//相对于外部容器定位,如果没有外部容器就相对于整个屏幕定位
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
          const Positioned(
            right: 0,
            top: 190,
            child: Text('66666'),
          )
        ],
      ),
    );
  }
}




