import 'package:flutter/material.dart';

class RegFirstPage extends StatefulWidget {
  const RegFirstPage({Key? key}) : super(key: key);

  @override
  State<RegFirstPage> createState() => _RegFirstPageState();
}

class _RegFirstPageState extends State<RegFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册第一步页面'),),
      body: Center(
        child: Column(
          children: [
            const Text('跳转到第二步注册页面'),
            ElevatedButton(onPressed: (){
              print('zhixingxioayibu');
              Navigator.pushNamed(context, "/reg-second");

            }, child: const Text('跳转到第二补'))
          ],
        ),
      ),
    );
  }
}
