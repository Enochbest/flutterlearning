import 'package:flutter/material.dart';
import 'dart:async';
class StreamControllerPage extends StatefulWidget {
  const StreamControllerPage({Key? key}) : super(key: key);

  @override
  State<StreamControllerPage> createState() => _StreamControllerPageState();
}

class _StreamControllerPageState extends State<StreamControllerPage> {
  //broadcast()创建的流可以有多个监听者
  final _controller = StreamController.broadcast();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.stream.listen((event) {
      print(event);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //一般是在组件销毁时关闭流
    _controller.close();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamControllerPage'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                // stream: _controller.stream,//配置全部流流
                stream: _controller.stream.where((event) => event>2).map((event) => event*2),//过滤大于2的流
                builder: (context,snapshot){
                  if(snapshot.connectionState==ConnectionState.done){
                    return const Text("流已关闭");
                  }
                  if(snapshot.hasError){
                    return  Text("Error:${snapshot.error}");
                  }
                  if(snapshot.hasData){
                    return Text("数据:${snapshot.data}",style: Theme.of(context).textTheme.headline4,);
                  }
                  return const CircularProgressIndicator();
                }
            ),
            ElevatedButton(onPressed: (){
              //给流里增加数据
              _controller.add(1);
            }, child: const Text('event-1')),
            ElevatedButton(onPressed: (){
              _controller.add(2);
            }, child: const Text('event-2')),
            ElevatedButton(onPressed: (){
              _controller.add(3);
            }, child: const Text('event-3')),
            ElevatedButton(onPressed: (){
              _controller.add(4);
            }, child: const Text('event-4')),
            ElevatedButton(onPressed: (){
              _controller.add(5);
            }, child: const Text('event-5')),
            ElevatedButton(onPressed: (){
              _controller.addError("this is error");
            }, child: const Text('addError')),
            ElevatedButton(onPressed: (){
              _controller.addError("this is error");
            }, child: const Text('addError')),
            ElevatedButton(onPressed: (){
              //手动关闭流,流关闭后不能再操作流
              _controller.close();
            }, child: const Text('close')),
          ],
        ),
      )
    );
  }
}
