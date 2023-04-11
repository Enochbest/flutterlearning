import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int sex = 1;
  int flag = 1;
  _changSex(value){
    setState(() {
      sex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radio组件'),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('男:'),
              Radio(value: 1, groupValue: sex, onChanged: _changSex),
              const Text('女:'),
              Radio(value: 2, groupValue: sex, onChanged: _changSex)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(sex==1? "男" : "女")
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("RadioListTile"),
              RadioListTile(
                  title: const Text('已完成核酸检测'),
                  value: 1,
                  groupValue: flag,
                  onChanged: (value){
                    setState(() {
                      flag = value as int;
                    });
                  }
              ),
              RadioListTile(
                  title: const Text('为完成核酸检测'),
                  value: 2,
                  groupValue: flag,
                  onChanged: (value){
                    setState(() {
                      flag = value as int;
                    });
                  }
              ),
              Text(flag==1? "已完成" : "未完成")

            ],
          ),
        ],
      ),
    );
  }
}
