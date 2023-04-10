import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
    //监听tab的索引值
    _tabController.addListener(() {
      // print(_tabController.index);//打印两次
      if(_tabController.animation!.value==_tabController.index){
        print(_tabController.index);
      }
    });
  }

  //销毁事件
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),//可以配置appBar的高度
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: SizedBox(
            height: 30,
            child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                onTap: (index){
                  print(index);//只能监听点击事件,不能监听滑动事件
                },
                labelStyle: const TextStyle(
                  fontSize: 16
                ),
                tabs: const [
                  Tab(child: Text("表单"),),
                  Tab(child: Text("热门"),),
                  Tab(child: Text("视频"),),
                  Tab(child: Text("关注"),),
                  Tab(child: Text("热门"),),
                  Tab(child: Text("视频"),),
                  Tab(child: Text("关注"),),
                  Tab(child: Text("热门"),),
                  Tab(child: Text("视频"),),
                ]),
          )
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/textfied");
                  },
                  child: const Text('TextField组件'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/mylogin");
                  },
                  child: const Text('登录演示组件'),
                ),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是热门列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是视频列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是关注列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是热门列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是视频列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是关注列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是热门列表'),
              )
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是视频列表'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

