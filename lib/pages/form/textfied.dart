import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField"),),
      body:ListView(
        padding: const EdgeInsets.all(10),
        children:  [
          const TextField(),
          const SizedBox(height: 20,),
          const TextField(
            decoration:InputDecoration(
              hintText: '请输入用户名',
              border: OutlineInputBorder()
            ),
          ),
          const SizedBox(height: 20,),
          const TextField(
            obscureText: true,
            decoration:InputDecoration(
                hintText: '请输入密码',
                border: OutlineInputBorder()
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            obscureText: true,
            decoration:InputDecoration(
                hintText: '请输入密码',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            decoration:InputDecoration(
                icon: const Icon(Icons.add),
                hintText: '请输入网址',
                prefixText: "http://:",
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            decoration:InputDecoration(
                hintText: '请输入用户名',
                prefixIcon: const Icon(Icons.people),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration:InputDecoration(
                hintText: '请输入密码',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          const SizedBox(height: 20,),
          const TextField(
            decoration:InputDecoration(
                hintText: '请输入关键词',
                suffixIcon: Icon(Icons.close),
                border: OutlineInputBorder()
            ),
          ),
          const SizedBox(height: 20,),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            maxLines: 4,
          )




        ],
      )
    );
  }
}
