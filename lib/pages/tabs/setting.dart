import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ListView(
        children: [
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/antmitedlist");
          }, child: const Text('动态列表')),
        ],
      ),
    );
  }
}
