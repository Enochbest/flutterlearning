import 'package:flutter/material.dart';
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
    List<Widget> tempList = [];
    for(var i = 0;i<12;i++ ){
      tempList.add(
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.blue
            ),
            child:  Text('第${i+1}个元素',style: const TextStyle(
                fontSize: 20
            ),),
          )
      );
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.all(10),
      childAspectRatio: 0.7,//宽高比
      crossAxisSpacing: 10,//水平间距
      mainAxisSpacing: 10,//垂直间距
      crossAxisCount: 4,//横轴子元素的最大长度
      children:  _initGridViewData()
    );
  }
}

