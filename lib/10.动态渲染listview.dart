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
  //动态生成listView列表
  List<Widget> _initListData(){
    List<Widget> list = [];
    for (var i = 0;i<20;i++){
      list.add(
         ListTile(title:Text("我是一个列表----$i"))
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _initListData()
    );
  }
}

