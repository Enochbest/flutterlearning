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
    return ListView(
      padding: const EdgeInsets.all(10),
      children:  <Widget>[
        Image.network("https://www.itying.com/images/flutter/6.png"),
         Container(
           padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
           height: 44,
          child: const Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            '我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22
            ),
          ),
        ),
      ],
    );
  }
}

