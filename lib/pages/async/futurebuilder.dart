import 'package:flutter/material.dart';


class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {

  Future<String> loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    // throw "this is error";
    return "你好我是远程数据";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FutureBuilderPage'),),
      body:  Center(
           child: FutureBuilder(
             future: loadData(),
             builder: (context,snapshot){
               if(snapshot.connectionState == ConnectionState.done){
                 if(snapshot.hasError){
                   return Text('${snapshot.error}');
                 }else{
                   return Text('${snapshot.data}');
                 }
               }else{
                 return const CircularProgressIndicator();
               }
             },
           )
      ),
    );
  }
}
