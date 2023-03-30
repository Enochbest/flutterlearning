import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好Flutter'),centerTitle: true,),
      body: Column(
        children: const [
          Myapp(),
          // CircularPic(),
          // ClipOvalPic(),
          LocalFile()
        ],
      ),
    ),
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 150,
        width: 350,
        decoration: const BoxDecoration(
          color: Colors.yellow
        ),
        child: Image.network(
          "https://img0.baidu.com/it/u=2135739007,3995495538&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=711",
           scale: 1,
          // fit: BoxFit.cover,
          repeat: ImageRepeat.repeatX,
        ),
      ),
    );
  }
}
//原形图片
class CircularPic extends StatelessWidget{
  const CircularPic({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(75),
        color: Colors.blue,
        image: const DecorationImage(
          image: NetworkImage("https://img0.baidu.com/it/u=2135739007,3995495538&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=711"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}

//利用ClipOval实现圆形图片

class ClipOvalPic extends StatelessWidget{
  const ClipOvalPic({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipOval(
      child: Image.network(
        "https://img0.baidu.com/it/u=2135739007,3995495538&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=711",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

}
class LocalFile extends StatelessWidget{
  const LocalFile({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipOval(
      child: Image.asset(
        "images/avator.jpg",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

}

