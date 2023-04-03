import 'package:flutter/material.dart';

class RegSecondPage extends StatefulWidget {
  const RegSecondPage({Key? key}) : super(key: key);

  @override
  State<RegSecondPage> createState() => _RegSecondPageState();
}

class _RegSecondPageState extends State<RegSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('我是第二步注册页面')),
      body: Center(
        child:Column(
          children: [
            const Text('我是第二步注册页面'),
            ElevatedButton(onPressed: (){
              print('执行跳转');
              //命名路由跳转
              // Navigator.pushNamed(context, "/reg-third");

              //替换路由跳转
              Navigator.of(context).pushReplacementNamed("/reg-third");
            }, child: const Text('跳转到第三步注册页面'))
          ],
        ),
      ),
    );
  }
}
