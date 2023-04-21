import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class RefreshListPage extends StatefulWidget {
  const RefreshListPage({Key? key}) : super(key: key);

  @override
  State<RefreshListPage> createState() => _RefreshListPageState();
}

class _RefreshListPageState extends State<RefreshListPage> {
   final ScrollController _scrollController = ScrollController(); //listview的控制器
  List _list = [];
  int _page = 1;
  bool flage = true;
  bool hasData=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
    //监听滚动到底部的事件
    _scrollController.addListener(() {
      if(_scrollController.position.pixels > _scrollController.position.maxScrollExtent-20){
        print('滚动到底部了');
          _getData(_page);
      }
    });
  }
  _getData([int page = 1]) async{
    if(flage && hasData){
      flage = false;
      String apiUri = "https://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$page";
      print(apiUri);
      var response = await Dio().get(apiUri);
      var res = jsonDecode(response.data)["result"];
      print(res);
      setState(() {
        _list.addAll(res);
        if(page==1){
          _list = [];
          _list.addAll(res);
        }else{
          _list.addAll(res);
        }
        flage=true;
        _page++;
      });
      if(res.length<20){
        setState(() {
          hasData = false;
        });
      }
    }
  }
   Widget _progressIndicator(){
    if(hasData){
      return const Center(
        child: CircularProgressIndicator(),
      );
    }else{
      return const Center(
        child:  Text('我也是有底线的'),
      );
    }

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('分页加载刷新'),),
      body: _list.isNotEmpty? RefreshIndicator(
        child: ListView.builder(
            controller: _scrollController,
            itemCount: _list.length,
            itemBuilder: (context,index){
              if(index==_list.length-1){
                return Column(
                  children: [
                      ListTile(
                      title: Text("${_list[index]["title"]}"),
                    ),
                    _progressIndicator()
                  ],
                );
              }else{
                return Column(
                  children: [
                    ListTile(
                      onTap: (){
                        print('6666');
                        Navigator.pushNamed(context, "/newsdetails",arguments:{"aid":_list[index]["aid"]} );
                      },
                      title: Text("${_list[index]["title"]}"),
                    ),
                    const Divider(),
                  ],
                );
              }

        }),
            onRefresh: ()async{
              print("执行上拉刷新");
              _getData();
            },
      ) : const Center(child: CircularProgressIndicator(),)
    );
  }
}


