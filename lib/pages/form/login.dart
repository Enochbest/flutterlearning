import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  late TextEditingController _usernameController;
  String username = "";
  String password = "";
  @override
  void initState() {
    // TODO: implement initState
    //初始化给用户名赋值
    super.initState();
    _usernameController = TextEditingController.fromValue(
       TextEditingValue(
        text:"张三",
        selection: TextSelection.fromPosition(
          TextPosition(
            offset: username.length
          )
        )
      )
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _usernameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(30),
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
              hintText: "请输入用户名",
              border: OutlineInputBorder(
              )
            ),
          ),
          const SizedBox(height: 20,),
           TextField(
            onChanged: (val){
              setState(() {
                password = val;
              });
            },
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "请输入密码",
                border: OutlineInputBorder(
                )
            ),
          ),
          const SizedBox(height: 40,),
           Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: ElevatedButton(
                  onPressed: (){
                    print(username);
                    print(password);
                  },
                  child: const Text('登录')
              ),
          )



        ],
      ),
    );
  }
}
