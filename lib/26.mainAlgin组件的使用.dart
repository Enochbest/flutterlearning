
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
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text('收藏'),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text('购买'),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: const [
              Positioned(
                left: 10,
                child: Text('收藏'),
              ),
              Positioned(
                right: 10,
                child: Text('购买'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}




