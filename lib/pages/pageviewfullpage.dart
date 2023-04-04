import 'package:flutter/material.dart';

class PageViewFullPage extends StatefulWidget {
  const PageViewFullPage({Key? key}) : super(key: key);

  @override
  State<PageViewFullPage> createState() => _PageViewFullPageState();
}

class _PageViewFullPageState extends State<PageViewFullPage> {
  List <Widget> list = [];

  void _addList(int index){
    if(index+2==list.length){
      setState(() {
        for(var i = 0;i<10;i++){
          list.add(
              Center(
                child: Text("第${i+1}屏幕",style: const TextStyle(
                    fontSize: 24
                ),),
              )
          );
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(var i = 0;i<10;i++){
      list.add(
        Center(
          child: Text("第${i+1}屏幕",style: const TextStyle(
            fontSize: 24
          ),),
        )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('pageviewfullpage页面'),),
      body: PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: (index){
          print('index');
          _addList(index);
        },
        children: list,
      ),
    );
  }
}
