import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_html/flutter_html.dart';
class NewsDetailsPage extends StatefulWidget {
  final Map arguments;
  const NewsDetailsPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  List _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
    _getDetails(widget.arguments["aid"]);
  }
  _getDetails(aid) async{
    var apiUrl = "https://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=$aid";
    print(apiUrl);
    var response = await Dio().get(apiUrl);
    var res =jsonDecode(response.data)["result"];
    setState(() {
      _list = res;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('新闻详情'),),
      body: _list.isNotEmpty ? ListView(
       children: [
         Center(
           child: Padding(
             padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
             child: Text("${_list[0]["title"]}",style: const TextStyle(
               fontSize: 24
             ),),
           ),
         ),
         Padding(
             padding: const EdgeInsets.all(10),
              child: Html(
                data: _list[0]["content"],
              ),
         )
       ],
      ): const Center(child: CircularProgressIndicator(),)
    );
  }
}
