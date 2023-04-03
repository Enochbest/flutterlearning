import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/user.dart';
import './tabs/message.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({Key? key,  this.index=0}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }
  final List <Widget>  _pages = const [
    HomePage(),
    CategoryPage(),
    Message(),
    SettingPage(),
    User()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text('FlutterApp'),
        backgroundColor: Colors.red,
      ),
      drawer:  Drawer(
        child: Column(
          children:  [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: DrawerHeader(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                        fit: BoxFit.cover
                      ),
                    ),
                    child: Column(
                      children:  const [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:NetworkImage("https://www.itying.com/images/flutter/2.png",),
                          ),
                          title: Text('张三',style: TextStyle(
                            color: Colors.white
                          ),)
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 60),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('个人中心'),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('系统设置'),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text('右侧侧边栏'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "用户"),
        ],
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 10),
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        child: FloatingActionButton(
          backgroundColor: _currentIndex==2? Colors.yellow : Colors.blue,
          child: const Icon(Icons.add),
          onPressed: (){
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}