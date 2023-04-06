import 'package:flutter/material.dart';
import '../tool/keepalivewrapper.dart';
class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({Key? key}) : super(key: key);

  @override
  State<PageViewKeepAlive> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('页面缓存组件'),),
      body: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
            return KeepAliveWrapper(child: MyContainer(num:index),);
          }
      ),
    );
  }
}

//自定义组件
class MyContainer extends StatefulWidget {
  final int num;
  const MyContainer({Key? key, required this.num}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    print(widget.num);
    return Center(
      child: Text("第${widget.num}屏幕",style: Theme.of(context).textTheme.headline1,),
    );
  }
}



