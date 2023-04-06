import 'package:flutter/material.dart';

class AntmitedList extends StatefulWidget {
  const AntmitedList({Key? key}) : super(key: key);

  @override
  State<AntmitedList> createState() => _AntmitedListState();
}

class _AntmitedListState extends State<AntmitedList> {
  final _globalkey = GlobalKey<AnimatedListState>();
  List<String> list =['第一条','第二条'];


  Widget _buildItem(index){
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
          onPressed: (){
            _deleItem(index);
          },
          icon: const Icon(Icons.delete)
      ),
    );
  }

  _deleItem(index){
    print(index);
    _globalkey.currentState!.removeItem(index, (context, animation){
      var removeItem = _buildItem(index);
      list.removeAt(index);
      return FadeTransition(
          opacity: animation,
          child: removeItem
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('动态列表'),),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add("我是新增数据");
            _globalkey.currentState!.insertItem(list.length-1);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: AnimatedList(
        key: _globalkey,
        initialItemCount: list.length,
        itemBuilder: ((context,index,anitmation){
          return FadeTransition(
              opacity: anitmation,
              child: _buildItem(index)
          );
        }),
      ),
    );
  }
}
