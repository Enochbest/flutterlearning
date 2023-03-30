import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好Flutter'),centerTitle: true,),
      body: Column(
        children: const [
           Myapp(),
          MyButton(),
          MyText()
        ],
      )
    ),
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Center(
        child: Container(
          alignment: Alignment.center,//配置容器内元素的方位
          margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          width: 200,
          height: 200,
          // transform: Matrix4.translationValues(40, 0, 0),//位移
          transform: Matrix4.rotationZ(0.2),//旋转
          decoration:  BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.cyan,
                width: 2
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0
                )
              ],
              gradient: const LinearGradient(colors: [
                Colors.red,
                Colors.yellow
              ])
          ),
          child: const Text('我是容器中的text',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        )
    );
  }
}
//创建一个自定义的button组件
class MyButton extends StatelessWidget{
  const MyButton({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,//配置容器内元素的方位
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(0,40,0,0),
      // padding: const EdgeInsets.fromLTRB(40,0,0,0),
      decoration: BoxDecoration(
        color:Colors.blue,
        borderRadius: BorderRadius.circular(50)
      ),
      child: const Text(
        '按钮',
        style: TextStyle(
        color: Colors.white,
        fontSize: 20
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget{
  const MyText({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.cyan
      ),
      child: const Text('文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字',
        style: TextStyle(
        color:Colors.yellow,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline
      ),
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis ,
      ),
    );
  }
}


