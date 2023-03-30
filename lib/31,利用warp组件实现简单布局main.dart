
import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Flutter App'),centerTitle: true,),
      body:  Myapp(),
    ),
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    title: 'Hello Demo',
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  Myapp({super.key,});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text('热搜',style: Theme.of(context).textTheme.headline6,)
          ],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Mybutton('文具', onPressed: () {},),
            Mybutton('文具', onPressed: () {},),
            Mybutton('5文具', onPressed: () {},),
            Mybutton('文具66', onPressed: () {},),
            Mybutton('文具', onPressed: () {},),
            Mybutton('文45454具', onPressed: () {},),
            Mybutton('5文具', onPressed: () {},),
            Mybutton('文具', onPressed: () {},),
            Mybutton('文具', onPressed: () {},),
            Mybutton('文54545具', onPressed: () {},),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Text('历史记录',style: Theme.of(context).textTheme.headline6,)
          ],
        ),
        const Divider(),
        Column(
          children: const [
            ListTile(title:Text('女装')),
            Divider(),
            ListTile(title:Text('文具')),
          ],
        ),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.all(40),
          child:OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.delete),label: const Text('清空历史记录'),),
        )
      ],
    );
  }
}

//创建自定义组件
class Mybutton extends StatelessWidget{
  String text;
  void Function()? onPressed;
  Mybutton(this.text, {super.key,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(242, 255, 244, 244)),
            foregroundColor: MaterialStateProperty.all(Colors.black45)
        ),
        onPressed: onPressed,
        child: Text(text));
  }
}


