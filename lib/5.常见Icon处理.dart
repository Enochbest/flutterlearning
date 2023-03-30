import 'package:flutter/material.dart';
import './MyIcon.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好Flutter'),centerTitle: true,),
      body: const Myapp(),
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
      children: const [
        SizedBox(height: 20,),
        Icon(Icons.home,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(Icons.work,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(Icons.store,size: 40,color:Colors.red),
        Icon(Icons.settings,size: 40,color:Colors.red),
        Icon(Icons.arrow_back,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(MyIcons.book,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),
        SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),SizedBox(height: 20,),
        Icon(MyIcons.weixin,size: 40,color:Colors.red),
      ],
    );
  }
}

