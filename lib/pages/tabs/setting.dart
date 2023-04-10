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
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/yinshi_animation");
          }, child: const Text('隐式动画')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/MyDrawer");
          }, child: const Text('隐式动画封装抽屉')),
          const SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/xianshi_animation");
          }, child: const Text('显式动画')),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/jiaocuo_animation");
          }, child: const Text('交错式动画')),

          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/heropage");
          }, child: const Text('Hero动画页面')),
        ],
      ),
    );
  }
}
