
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
    return  Container(
      width: 400,
      height: 700,
      color: Colors.black,
      padding: const EdgeInsets.all(10),
      child: Row(//外部没有Container行是自适应的
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,//相对于外部Container容器
        children: const [
          IconContainer(Icons.home),
          IconContainer(Icons.add,color:Colors.yellow,),
          // IconContainer(Icons.share_arrival_time,color:Colors.yellow,),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget{
  final Color color;
  final IconData icon;
  const IconContainer(this.icon,{super.key,this.color=Colors.red});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      decoration:  BoxDecoration(
        color: color
      ),
      child:  Icon(icon,color: Colors.white,size:28),
    );
  }

}


