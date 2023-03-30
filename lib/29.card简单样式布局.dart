
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
  List<Widget> _initGridViewData(){
    var tempList = listData.map((e) =>
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(e["imageUrl"],fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(e["imageUrl"],fit: BoxFit.cover, height: 40,width: 40,),
                ),
                title:  Text(e["author"]),
                subtitle:  Text(e["title"]),
              )
            ],
          ),
        ),
    );
    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;
    return ListView(
      children: _initGridViewData(),
    );
  }
}




