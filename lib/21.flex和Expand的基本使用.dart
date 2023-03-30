
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
    return  Row(//外部没有Container 列高度是自适应的
      children: const [
        // IconContainer(Icons.share_arrival_time,color:Colors.yellow,),
        Expanded(//这个组件的宽度高度是没有效果的
          flex: 1,
          child: IconContainer(Icons.home),
        ),
        IconContainer(Icons.add,color:Colors.yellow,),
      ],
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
      height: 80,
      width: 80,
      decoration:  BoxDecoration(
        color: color
      ),
      child:  Icon(icon,color: Colors.white,size:28),
    );
  }

}


