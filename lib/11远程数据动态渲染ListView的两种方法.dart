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
  //动态生成listView列表
  // List<Widget> _initListData(){
  //   List<Widget> templist = [];
  //   for(var i = 0;i<listData.length;i++ ){
  //     templist.add(
  //       ListTile(
  //         title: Text("${listData[i]["title"]}"),
  //         subtitle: Text("${listData[i]["author"]}"),
  //         leading: Image.network("${listData[i]["imageUrl"]}"),
  //       )
  //     );
  //   }
  //
  //   return templist;
  //
  // }
  List<Widget> _initListData(){

    var templist = listData.map((e){
      return ListTile(
        title: Text("${e["title"]}"),
        subtitle: Text("${e["author"]}"),
        leading: Image.network("${e["imageUrl"]}"),
      );
    });
    return templist.toList();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _initListData()
    );
  }
}

