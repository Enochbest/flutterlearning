import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好'),centerTitle: true,),
      body: const Myapp(),
    ),
    theme: ThemeData(
      primarySwatch: Colors.yellow
    ),
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: const <Widget>[
        ListTile(
            title:Text("首页")),
      ],
    );
  }
}

