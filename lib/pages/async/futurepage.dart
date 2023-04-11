import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  const FuturePage({Key? key}) : super(key: key);

  @override
  State<FuturePage> createState() => _FuturePageState();
}
class _FuturePageState extends State<FuturePage> {
  int _count = 0;
  Future<int> getNum(){
    return Future(() => 123);
  }

  void _incrementCounter() async{
    getNum().then((value) => value*2).then((value) {
     print(value);
    }).catchError((err){
      print(err);
    }).whenComplete((){
      print("完成");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _incrementCounter();
            _count++;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child:  Text('$_count',style: const TextStyle(
          fontSize: 40
        ),),
      ),
    );
  }
}
