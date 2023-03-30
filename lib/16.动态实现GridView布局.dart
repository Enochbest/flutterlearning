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
  List<Widget> _initGridViewData(){
    var tempList = listData.map((e) =>
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black26
              )
          ),
          child: Column(
            children: [
              Image.network(e["imageUrl"]),
              const SizedBox(height: 20,),
              Text(e["title"],style: const TextStyle(
                  fontSize: 18
              ),)
            ],
          ),
        )
    );
    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
        padding: const EdgeInsets.all(10),
        childAspectRatio: 1,//宽高比
        crossAxisSpacing: 10,//水平间距
        mainAxisSpacing: 10,//垂直间距
        maxCrossAxisExtent: 200,//横轴子元素的最大长度
        children:  _initGridViewData()
    );
  }
}
