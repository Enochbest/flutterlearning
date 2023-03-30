
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
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          children: const [
            ListTile(title: Text("我是第一个列表"),),
            ListTile(title: Text("我是第3个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
            ListTile(title: Text("我是第个列表"),),
          ],
        ),
        Positioned(
          left: 0,
          bottom: 0,
          width: size.width,
          height: 44,
            child: Container(
              alignment: Alignment.center,
              color:Colors.red,
              child: const Text('导航'),
            )
        )
      ],
    );
  }
}




