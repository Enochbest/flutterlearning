import 'package:flutter/material.dart';

class MyDrawerPlus extends StatefulWidget {
  const MyDrawerPlus({Key? key}) : super(key: key);

  @override
  State<MyDrawerPlus> createState() => _MyDrawerPlusState();
}

class _MyDrawerPlusState extends State<MyDrawerPlus> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                flag = !flag;
              });
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(title: const Text('自定义抽屉组价'),),
          body: Center(
            child: ListView(
              children: const [
                ListTile(
                  title: Text("我是一个列表"),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 200,
            height: double.infinity,
            transform: flag? Matrix4.translationValues(-200, 0, 0):Matrix4.translationValues(0, 0, 0),
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
