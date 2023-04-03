import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/login");
          }, child: const Text('登录')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/reg-first");
          }, child: const Text('注册')),
          const SizedBox(height: 40,),
        ],
      )
    );
  }
}
