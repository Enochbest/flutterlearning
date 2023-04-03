import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录页面'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('登录演示执行登录有返回上一个页面'),
             const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                print('6666');
                Navigator.of(context).pop();
              },
                  child: const Text('执行登录')),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              print('6666');
              Navigator.pushNamed(context, "/RegFirstPage");
            },
                child: const Text('注册')),

          ],
        ),
      ),
    );
  }
}
