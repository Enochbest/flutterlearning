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
      child: ListView(
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
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/pageviewbuilder");
          }, child: const Text('pageviewbuilder')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/pageviewfullpage");
          }, child: const Text('pageviewfullpage')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/pageviewswiper");
          }, child: const Text('pageviewswiper')),

          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/autopageview");
          }, child: const Text('自动轮播图')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/pageviewkeepalive");
          }, child: const Text('页面缓存组件使用')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/keylearningpage");
          }, child: const Text('Widget组件的作用')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/childwidgetstate");
          }, child: const Text('子组件的状态获取')),
        ],

      ),
    );
  }
}
