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
                  Tab(child: Text("异步"),),
                  Tab(child: Text("时间"),),
                  Tab(child: Text("请求"),),
                  Tab(child: Text("插件"),),
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
                  child: const Text('TextField组件'),
                  onPressed: () {
                    Navigator.pushNamed(context, "/textfied");
                  },
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
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/radio");
                  },
                  child: const Text('Radio组件'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/checkbox");
                  },
                  child: const Text('Checkbox组件'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/formcase");
                  },
                  child: const Text('Form案例'),
                ),
              ),
            ],
          ),
          ListView(
            children:  [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/progress");
                  },
                  child: const Text('Progress案例'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/futurepage");
                  },
                  child: const Text('Future'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/futurebuilder");
                  },
                  child: const Text('FutureBuilderPage'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/streampage");
                  },
                  child: const Text('StreampagePage'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/streambuilderpage");
                  },
                  child: const Text('streambuilderpage'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/streamcontroller");
                  },
                  child: const Text('StreamControllerPage'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/streamgame");
                  },
                  child: const Text('Stream打字游戏'),
                ),
              ),


            ],
          ),
          ListView(
            children:  [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/timepicker");
                  },
                  child: const Text('时间'),
                ),
              ),
            ],
          ),
          ListView(
            children:  [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/diorequest");
                  },
                  child: const Text('dio请求'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/diofuture");
                  },
                  child: const Text('dioFuture请求分类数据'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/refreshpage");
                  },
                  child: const Text('列表分页'),
                ),
              ),
            ],
          ),
          ListView(
            children:  [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/appwebview");
                  },
                  child: const Text('appwebview插件'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/pickerimage");
                  },
                  child: const Text('图片选择,拍照'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/videoplayer");
                  },
                  child: const Text('视频播放'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/getdeviceinfo");
                  },
                  child: const Text('获取设备信息'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/getinternetstatus");
                  },
                  child: const Text('获取网络状态'),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/scancode");
                  },
                  child: const Text('二维码扫描'),
                ),
              ),
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

