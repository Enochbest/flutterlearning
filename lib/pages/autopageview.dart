import 'dart:async';
import 'package:flutter/material.dart';
import '../widget/imagepage.dart';

class AutoPageViewPage extends StatefulWidget {
  const AutoPageViewPage({Key? key}) : super(key: key);

  @override
  State<AutoPageViewPage> createState() => _AutoPageViewPageState();
}

class _AutoPageViewPageState extends State<AutoPageViewPage> {
  List<Widget> list = [];
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = const [
      ImagePage(
          height: 200,
          src: 'https://www.itying.com/images/flutter/1.png'
      ),
      ImagePage(
          height: 200,
          src: 'https://www.itying.com/images/flutter/2.png'
      ),
      ImagePage(
          height: 200,
          src: 'https://www.itying.com/images/flutter/3.png'
      ),
    ];
    Timer t = Timer.periodic(const Duration(seconds: 3), (timer) {
      print('我执行了');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AutoPageViewPage'),
        ),
        body: Stack(
          children: [
            SizedBox(
                height: 200,
                child: PageView.builder(
                    onPageChanged: (index){
                      setState(() {
                        _currentIndex = index % list.length;
                      });
                    },
                    itemCount: 1000,
                    itemBuilder: (context,index){
                      return list[index%list.length];
                    }
                )
            ),
            Positioned(
              left: 0,
              bottom: 2,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) =>
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: _currentIndex==index?Colors.blue:Colors.grey,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    )
                ).toList(),
              ),
            )
          ],
        )
    );
  }
}
