import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widget/mydialog.dart';


class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    print('alertDialog');
    var result = await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('提示信息'),
        content: const Text('您确定要删除吗'),
        actions: [
          TextButton(onPressed: (){
            print('确定');
            Navigator.of(context).pop("ok");
          }, child: const Text('确定')),
          TextButton(onPressed: (){
            print('取消');
            Navigator.of(context).pop("取消");
          }, child: const Text('取消'))
        ],
      );
    });
    print('res====$result');

  }

  void _simpleDialog() async {
    print('_simpleDialog');
    var result = await showDialog(barrierDismissible: false, context: context, builder: (context){
      return  SimpleDialog(
        title:const Text('请选择语言'),

        children: [
          SimpleDialogOption(
            onPressed: (){
              print('汉语');
              Navigator.pop(context,"汉语");
            },
            child: const Text('汉语'),
          ),
          const Divider(),
          SimpleDialogOption(
            onPressed: (){
              print('日语');
              Navigator.pop(context,"日语");

            },
            child: const Text('日语'),
          ),
          const Divider(),
          SimpleDialogOption(
            onPressed: (){
              print('英语');
              Navigator.pop(context,"英语");

            },
            child: const Text('英语'),
          ),
          const Divider(),
        ],
      );
    });
    print("res-----${result}");

  }

  void _modelDialog() async {
    print('alertDialog');
    var result =  await showModalBottomSheet(
        context: context,
        builder: (context){
          return SizedBox(
            height: 200,
            child: ListView(
              children:  [
                ListTile(
                  title:  const Text('风险'),
                  onTap: (){
                    Navigator.pop(context,'风险');
                  },
                ),
                const Divider(),
                ListTile(
                  title:  const Text('收藏'),
                  onTap: (){
                    Navigator.pop(context,'风险');
                  },
                ),
                const Divider(),
                ListTile(
                  title:  const Text('取消'),
                  onTap: (){
                    Navigator.pop(context,'风险');
                  },
                ),
                const Divider(),
                ListTile(
                  title:  const Text('取消'),
                  onTap: (){
                    Navigator.pop(context,'风险');
                  },
                ),
                const Divider(),

              ],
            ),
          );
        });
    print('res____$result');
  }

  void _toast(){
    print('_toast');
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void _myDialog() async {
    print('6666');
    var result = await showDialog(context: context, builder: (context){
      return  MyDialog(
        title: '提示',
        content: '我是内容',
        onTap: (){
          print('关闭');
          Navigator.of(context).pop("我是自定义事件");
        },
      );
    });
    print('result____$result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我是dialog页面'),),
      body:  Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: _alertDialog, child: const Text('alertDialog弹出框')),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: _simpleDialog, child: const Text('simpleDialog弹出框')),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: _modelDialog, child: const Text('modelDialog弹出框')),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: _toast, child: const Text('toast弹出框')),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: _myDialog, child: const Text('自定义Dialog')),
          ],
        ),
      ),
    );
  }
}
