import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool flag =true;
  final List _hobby = [
    {"checked":true,"title":"吃饭"},
    {"checked":false,"title":"睡觉"},
    {"checked":true,"title":"写代码"},
  ];
  final List _listTitleHobby = [
    {"checked":true,"title":"吃饭"},
    {"checked":false,"title":"睡觉"},
    {"checked":true,"title":"写代码"},
  ];
  List<Widget> _initHobby(){
    List<Widget> templist = [];
    for (var i = 0;i<_hobby.length;i++ ){
      templist.add(
          Row(
            children: [
              Text("${_hobby[i]["title"]}"),
              Checkbox(value: _hobby[i]["checked"], onChanged: (value){
                setState(() {
                  _hobby[i]["checked"] = value;
                });
              })
            ],
          )
      );
    }
    return templist;
  }
  List<Widget> _initlistTitleHobby(){
    List<Widget> templist = [];
    for (var i = 0;i<_listTitleHobby.length;i++ ){
      templist.add(
          CheckboxListTile(
              title: Text("${_listTitleHobby[i]["title"]}"),
              value:  _listTitleHobby[i]["checked"],
              onChanged: (value){
                setState(() {
                _listTitleHobby[i]["checked"] = value;
              });
          })
      );
    }
    return templist;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('checkBox'),),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children:  [
           Checkbox(value: flag, onChanged: (value){
             setState(() {
               //可空类型
               flag = value!;
             });
           }),
          Text(flag?"已选中" : "未选中"),
          const SizedBox(height: 40,),
          const Divider(),
          const SizedBox(height: 40,),
          Column(
            children: _initHobby(),
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
              onPressed:(){
                print(_hobby);
              }, 
              child: const Text('获取值')
          ),
          const Divider(),
          const SizedBox(height: 40,),
          const Text('checkBoxListTile'),
          Column(
            children: _initlistTitleHobby(),
          ),
        ],
      ),
    );
  }
}
