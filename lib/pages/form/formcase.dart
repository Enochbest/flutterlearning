import 'package:flutter/material.dart';

class FormPageCase extends StatefulWidget {
  const FormPageCase({Key? key}) : super(key: key);

  @override
  State<FormPageCase> createState() => _FormPageCaseState();
}

class _FormPageCaseState extends State<FormPageCase> {
  late TextEditingController _usernameController;
  String username = "";
  String des = "";
  int sex = 1;
  final List _hobby = [
    {"checked":true,"title":"吃饭"},
    {"checked":false,"title":"睡觉"},
    {"checked":true,"title":"写代码"},
  ];
  List<Widget> _initHobby(){
    List<Widget> templist = [];
    for (var i = 0;i<_hobby.length;i++ ){
      templist.add(
          CheckboxListTile(
              title: Text("${_hobby[i]["title"]}"),
              value:  _hobby[i]["checked"],
              onChanged: (value){
                setState(() {
                  _hobby[i]["checked"] = value;
                });
              })

      );
    }
    return templist;
  }



  _changSex(value){
    setState(() {
      sex = value;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController = TextEditingController.fromValue(
        TextEditingValue(
            text:"",
            selection: TextSelection.fromPosition(
                TextPosition(
                    offset: username.length
                )
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登记'),),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children:  [
          TextField(
            controller: _usernameController,
            onChanged: (val){
              setState(() {
                username = val;
              });
            },
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people),
                hintText: "请输入用户信息",
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const Text('男:'),
              Radio(value: 1, groupValue: sex, onChanged: _changSex),
              const Text('女:'),
              Radio(value: 2, groupValue: sex, onChanged: _changSex)
            ],
          ),
          Column(
            children: _initHobby(),
          ),
          const SizedBox(height: 20,),
           TextField(
            onChanged: (value){
              setState(() {
                des = value;
              });
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder()
            ),
            maxLines: 4,
          ),
          ElevatedButton(onPressed: (){
            print(des);
          }, child: const Text('获取信息'))

        ],
      ),
    );
  }
}
