
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
  Widget _initGridViewData(context,index){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black26
          )
      ),
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          const SizedBox(height: 20,),
          Text(listData[index]["title"],style: const TextStyle(
              fontSize: 18
          ),)
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,//宽高比
        crossAxisSpacing: 10,//水平间距
        mainAxisSpacing: 10,//垂直间距
        crossAxisCount: 2
      ),
      itemBuilder: _initGridViewData,
    );
  }
}



