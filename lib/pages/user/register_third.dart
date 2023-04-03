import 'package:flutter/material.dart';
import '../tabs.dart';

class RegThirdPage extends StatefulWidget {
  const RegThirdPage({Key? key}) : super(key: key);

  @override
  State<RegThirdPage> createState() => _RegThirdPageState();
}

class _RegThirdPageState extends State<RegThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我是第三步注册页面'),),
      body: Center(
        child:Column(
          children: [
            const Text('我是第二步注册页面'),
            ElevatedButton(onPressed: (){
              print('执行跳转');
              Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context){
                return const Tabs(index: 4,);
              })
              , (route) => false);
            }, child: const Text('完成注册'))
          ],
        ),
      ),
    );
  }
}
