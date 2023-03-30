import 'package:flutter/material.dart';
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
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children:  <Widget>[
          Container(
            width: 120,
            decoration: const BoxDecoration(
                color: Colors.red
            ),
            child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Image.network("https://img0.baidu.com/it/u=2135739007,3995495538&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=711",
                fit: BoxFit.cover,
                )
              ),
              const Text("文字")
            ],
            ),
          ),
        ],
      ),
    );
  }
}

