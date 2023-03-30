import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好'),centerTitle: true,),
      body: const Myapp(),
    ),
    theme: ThemeData(
      primarySwatch: Colors.yellow
    ),
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children:  <Widget>[
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text('华北黄淮高温雨今起强势登场'),
          subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/2.png"),
          title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
          subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降温"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/4.png"),
          title: const Text('普京现身俄海军节阅兵：乘艇检阅军舰'),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/5.png"),
          title: const Text('鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当'),
        ),
        const Divider(),
        ListTile(
          trailing: Image.network("https://www.itying.com/images/flutter/6.png"),
          title: const Text('行业冥灯？老罗最好祈祷苹果的AR能成'),
        ),
      ],
    );
  }
}

