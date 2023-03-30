
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉debug图标
      title: 'FlutterDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin  {
   late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }
  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.menu ),
          onPressed: (){},
        ),
          backgroundColor: Colors.red,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.abc)),
          ],
          title:const Text('FlutterApp'),
          bottom:TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorPadding: const EdgeInsets.all(5),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            tabs: const [
            Tab(child: Text("关注"),),
            Tab(child: Text("热门"),),
            Tab(child: Text("视频"),),
              Tab(child: Text("关注"),),
              Tab(child: Text("热门"),),
              Tab(child: Text("视频"),),
              Tab(child: Text("关注"),),
              Tab(child: Text("热门"),),
              Tab(child: Text("视频"),),
          ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
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

