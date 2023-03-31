import 'package:flutter/material.dart';


//新闻页面接收上个页面的参数
class NewsPage extends StatefulWidget {
  final String title;
  final int aid;
  const NewsPage({Key? key, this.title='新闻',required this.aid}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState(){
    super.initState();
    print(widget.aid);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.back_hand),
      ),
      appBar: AppBar(
        title:  Text(widget.title),
      ),
      body: const Center(
        child: Text('我是新闻页面'),
      ),
    );
  }
}
