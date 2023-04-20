import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class DioRequestPage extends StatefulWidget {
  const DioRequestPage({Key? key}) : super(key: key);

  @override
  State<DioRequestPage> createState() => _DioRequestPageState();
}

class _DioRequestPageState extends State<DioRequestPage> {
  _getData() async{
    var response = await
    Dio().get('https://jdmall.itying.com/api/httpGet',queryParameters:{
      "username":"zhangsan"
    });
    print(response.data is Map);
    print(response.data["msg"]);
  }
  _postData()async{
    var response = await Dio().put('https://jdmall.itying.com/api/httpPost',
        data: {"username": "张三111", "age": "20"});
    print(response.data);
    print(response.data is Map);

  }
  _deleteData()async{

    var response = await Dio().delete(
        'https://jdmall.itying.com/api/httpDelete',
        queryParameters: {"id": "1"});
    print(response.data);
    print(response.data is Map);

  }
  _putData()async{
    var response = await Dio().put('https://jdmall.itying.com/api/httpPut',
        data: {"username": "张三111", "age": "20"});
    print(response.data);
    print(response.data is Map);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('远程请求数据'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _getData, child: const Text('get请求')),
            ElevatedButton(onPressed: _postData, child: const Text('post请求')),
            ElevatedButton(onPressed: _deleteData, child: const Text('delete请求')),
            ElevatedButton(onPressed: _putData, child: const Text('put请求')),
          ]
        ),
      ),
    );
  }
}
