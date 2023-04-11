import 'dart:math';

import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  //定义一个异步流
  Stream<int>loadStreamData(){
    return Stream.periodic(
      const Duration(seconds: 1),
        (v){
          if(Random().nextBool()){
            return v;
          }
          throw "this is error";
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamBuilderPage'),),
      body:  Center(
        child:  StreamBuilder(
          stream: loadStreamData(),
          builder: (BuildContext context,AsyncSnapshot<dynamic> snapshot){
            print(snapshot.connectionState);

            switch(snapshot.connectionState){
              case ConnectionState.none:
                return const Text('没有数据流');
              case ConnectionState.waiting:
                return const Text('加载中');
              case ConnectionState.active:
                if(snapshot.hasError){
                  return Text("error:${snapshot.error}");
                }else{
                  return Text("${snapshot.data}",
                    style: Theme.of(context).textTheme.headline1,
                  );
                }
              case ConnectionState.done:
                return const Text('已完成');
              default:
                throw "connectionState无其他状态";
            }
          },
        ),
      ),
    );
  }
}
