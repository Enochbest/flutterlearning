import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  //值返回一个数据,future在未来只会获取一个值
  Future<String> loadData() async{
    return "this is Future";
  }

  //定义一个异步流
  Stream<int> loadStreamData(){
    return Stream.periodic(
      const Duration(seconds: 1), (_)=>42);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //获取future里的数据
    loadData().then((value) => print(value));
    //获取流里的数据
    loadStreamData().listen((event) {
      print(event);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamPage'),),
      body: const Center(
        child:  Text('StreamPage'),
      ),
    );
  }
}
