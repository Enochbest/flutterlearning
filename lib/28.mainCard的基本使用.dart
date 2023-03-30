
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
    return ListView(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const[
              ListTile(
                title: Text("张三",style: TextStyle(fontSize: 28),),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text("电话 :1546454545"),
              ),
              ListTile(
                title: Text("地址 :北京市海淀区xxxxx"),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Card(
          elevation: 10,
          child: Column(
            children: const[
              ListTile(
                title: Text("张三",style: TextStyle(fontSize: 28),),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text("电话 :1546454545"),
              ),
              ListTile(
                title: Text("地址 :北京市海淀区xxxxx"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}




