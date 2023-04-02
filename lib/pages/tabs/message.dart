import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        // children: [
        //   ElevatedButton(onPressed: (){
        //     Navigator.of(context).push(
        //       MaterialPageRoute(builder: (BuildContext context){
        //         return const SearchPage();
        //       })
        //     );
        //   }, child: const Text('搜索')),
        //   const SizedBox(height: 40,),
        //   ElevatedButton(onPressed: (){
        //     Navigator.of(context).push(
        //         MaterialPageRoute(builder: (BuildContext context){
        //           return const FormPage();
        //         })
        //     );
        //   }, child: const Text('跳转到表单页面')),
        //   ElevatedButton(onPressed: (){
        //     Navigator.of(context).push(
        //         MaterialPageRoute(builder: (BuildContext context){
        //           return const NewsPage(title: "我是标题",aid:12);
        //         })
        //     );
        //   }, child: const Text('跳转到新闻页面')),
        //
        // ],
        children:  [
          const Text('666'),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,'/form',arguments: {
                "title":"我是命名路由穿值"
              });
            }, child: const Text('命名路由跳转')),
        ],
      ),
    );
  }
}
