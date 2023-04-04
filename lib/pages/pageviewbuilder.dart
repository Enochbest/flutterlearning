import 'package:flutter/material.dart';

class PageViewBuilderPage extends StatefulWidget {
  const PageViewBuilderPage({Key? key}) : super(key: key);

  @override
  State<PageViewBuilderPage> createState() => _PageViewBuilderPageState();
}

class _PageViewBuilderPageState extends State<PageViewBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('pageViewBuilder'),),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder:(context,index){
            return Center(
              child: Text(
                "第${index+1}屏"
              ),
            );
          }
      ),
    );
  }
}
