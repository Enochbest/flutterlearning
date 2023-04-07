import 'dart:ffi';

import 'package:flutter/material.dart';

class YinshiAnimation extends StatefulWidget {
  const YinshiAnimation({Key? key}) : super(key: key);

  @override
  State<YinshiAnimation> createState() => _YinshiAnimationState();
}

class _YinshiAnimationState extends State<YinshiAnimation> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('隐式动画'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            flag=!flag;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text('AnimatedContainer动画'),
               Center(
                 child: AnimatedContainer(
                   duration: const Duration(seconds: 1,milliseconds: 100),
                   height: flag?200 :100,
                   width: flag?200 :100,
                   transform: flag?Matrix4.translationValues(0, 0, 0) : Matrix4.translationValues(100, 0, 0),
                   color: Colors.red,
                 ),
               ),
               const Text('AnimatedPadding动画'),
               Center(
                 child: AnimatedPadding(
                   curve: Curves.easeIn,
                   duration: const Duration(milliseconds: 200),
                   padding:  EdgeInsets.fromLTRB(10, flag?200 : 10, 0, 0),
                   child: Container(
                     width: 100,
                     height: 100,
                     color: Colors.red,
                   ),
                 )
               ),
               const Text('AnimatedOpacity动画'),
               Center(
                   child: AnimatedOpacity(
                     opacity: flag?0.1 : 1,
                     duration: const Duration(seconds: 1),
                     child: Container(
                       width: 100,
                       height: 100,
                       color: Colors.red,
                     ),
                   )
               ),
               const Text('AnimatedPositioned动画'),
               Center(
                   child: Container(
                     height: 300,
                     width: double.infinity,
                     color: Colors.blue,
                     child: Stack(
                       children: [
                         ListView(
                           children: const [
                             ListTile(
                               title: Text('我是一个列表'),
                             )
                           ],
                         ),
                         AnimatedPositioned(
                           duration: const Duration(seconds: 1,milliseconds: 500),
                           left: flag? 100 : 0,
                           top: flag?300 : 0,
                           child: Container(
                             width: 50,
                             height: 50,
                             color: Colors.red
                           ),
                         ),
                       ],
                     ),
                   )
               ),
               const Text('文字动画'),
               Center(
                   child: Container(
                     alignment: Alignment.center,
                     height: 300,
                     width: 300,
                     color: Colors.blue,
                     child:  AnimatedDefaultTextStyle(
                       duration: const Duration(seconds: 1),
                       style: TextStyle(
                           fontSize: flag? 20 : 50
                       ),
                       child: const Text(
                         "你好Flutter",

                       ),
                     )
                   )
               ),
               const Text('AnimatedSwitcher动画'),
               Center(
                   child: Container(
                       alignment: Alignment.center,
                       height: 300,
                       width: 300,
                       color: Colors.yellow,
                       child:  AnimatedSwitcher(
                         transitionBuilder: ((child,animation){
                           return ScaleTransition(
                               scale: animation,
                             child: FadeTransition(
                               opacity: animation,
                               child: child,
                             ),
                           );
                         }),
                         duration: const Duration(seconds: 1),//子元素改变的时候触发动画
                         child: flag ?const CircularProgressIndicator() : Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                       )
                   )
               ),
             ],
          )
        ],
      )
    );
  }
}
