import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好Flutter'),centerTitle: true,),
      body: const Myapp()
    ),
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text('我是一个自定义组件',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.cyan,
            fontSize: 30
        ),
      ),
    );
  }
}


