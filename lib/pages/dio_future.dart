import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioFuturePage extends StatefulWidget {
  const DioFuturePage({Key? key}) : super(key: key);

  @override
  State<DioFuturePage> createState() => _DioFuturePageState();
}

class _DioFuturePageState extends State<DioFuturePage> {
  _getCateList() async{
    var response = await Dio().get('https://jdmall.itying.com/api/pcate');
    return response.data['result'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('futurebuilder请求分类数据'),
      ),
      body: FutureBuilder(
        future: _getCateList(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.connectionState==ConnectionState.done){
          if(snapshot.hasError){
            return Center(child:  Text('Error:${snapshot.hasError}'),);
          }else{
            var response = snapshot.data as List;
            return ListView(
              children: response.map((value) =>
                   Column(
                     children: [
                       ListTile(
                           title: Text("${value["title"]}")
                       ),
                       const Divider()
                     ],
                   )
              ).toList(),
            );
          }
        }else{
          return const Center(
            child:  CircularProgressIndicator(),
          );
        }
      },

      ),
    );
  }
}
