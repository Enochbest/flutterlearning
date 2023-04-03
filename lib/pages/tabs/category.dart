import 'package:flutter/material.dart';
import '../search.dart';
import '../form.dart';
import '../news.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context){
                return const SearchPage();
              })
            );
          }, child: const Text('搜索')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context){
                  return const NewsPage(title: "我是标题",aid:12);
                })
            );
          }, child: const Text('跳转到新闻页面')),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/pageview");
          }, child: const Text('pageview页面')),

        ],
      ),
    );
  }
}
