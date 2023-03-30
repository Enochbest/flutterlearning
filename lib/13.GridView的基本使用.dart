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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(maxCrossAxisExtent: 200,//横轴子元素的最大长度
    children: const [
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
      Icon(Icons.pedal_bike),
    ],
    );
  }
}

