
import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Flutter App'),centerTitle: true,),
      body:  Myapp(),
    ),
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    title: 'Hello Demo',
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
   Myapp({super.key,});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing:10,//水平间距
        runSpacing: 20,//垂直间距
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        children: [
          Mybutton('666',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
          Mybutton('6654646',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
          Mybutton('6645456',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
          Mybutton('666',onPressed:(){}),
        ],
      ),
    );
  }
}

//创建自定义组件
class Mybutton extends StatelessWidget{
  String text;
  void Function()? onPressed;
  Mybutton(this.text, {super.key,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(242, 255, 244, 244)),
            foregroundColor: MaterialStateProperty.all(Colors.black45)
        ),
        onPressed: onPressed,
        child: Text(text));
  }
}


