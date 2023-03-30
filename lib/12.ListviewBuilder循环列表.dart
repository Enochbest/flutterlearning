import 'package:flutter/material.dart';
import './res/listData.dart';
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
    return ListView.builder(
        itemBuilder: (context,i){
          return ListTile(
            leading: Image.network(listData[i]["imageUrl"]),
            title: Text(listData[i]["title"]),
            subtitle: Text(listData[i]["author"]),
          );
        },
        itemCount: listData.length,
    );
  }
}

