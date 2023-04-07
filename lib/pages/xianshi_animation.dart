import 'package:flutter/material.dart';

class XianshiAnimation extends StatefulWidget {
  const XianshiAnimation({Key? key}) : super(key: key);

  @override
  State<XianshiAnimation> createState() => _XianshiAnimationState();
}

class _XianshiAnimationState extends State<XianshiAnimation> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
    );//让手机的刷新频率统一
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: (){
          _controller.repeat(reverse: true); //重复播放
        },
      ),
      appBar: AppBar(title: const Text('显式动画'),),
      body:ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('RotationTransition动画'),
                const SizedBox(height: 40,),
                RotationTransition(
                  turns: _controller,
                  child:  FlutterLogo(key:UniqueKey(),size: 60,),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      _controller.forward(); //正序播放一次
                    }, child: const Text("Forward")),
                    ElevatedButton(onPressed: (){
                      _controller.reverse(); //倒序播放一次
                    }, child: const Text("Reverse")),
                    ElevatedButton(onPressed: (){
                      _controller.stop(); //停止播放
                    }, child: const Text("Stop")),
                    ElevatedButton(onPressed: (){
                      _controller.reset(); //重置
                    }, child: const Text("rest")),
                    ElevatedButton(onPressed: (){
                      _controller.repeat(reverse: true); //重复播放
                    }, child: const Text("repeat"))
                  ],
                ),
                const Divider(),
                const Text('FadeTransition动画'),
                const SizedBox(height: 40,),
                FadeTransition(
                  opacity: _controller,
                  child: FlutterLogo(key:UniqueKey(),size: 120,),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      _controller.forward(); //正序播放一次
                    }, child: const Text("Forward")),
                    ElevatedButton(onPressed: (){
                      _controller.reverse(); //倒序播放一次
                    }, child: const Text("Reverse")),
                    ElevatedButton(onPressed: (){
                      _controller.stop(); //停止播放
                    }, child: const Text("Stop")),
                    ElevatedButton(onPressed: (){
                      _controller.reset(); //重置
                    }, child: const Text("rest")),
                    ElevatedButton(onPressed: (){
                      _controller.repeat(); //重复播放
                    }, child: const Text("repeat"))
                  ],
                ),
                const Divider(),
                const Text('ScaleTransition动画'),
                const SizedBox(height: 40,),
                ScaleTransition(
                  //Tween配置运动的参数
                  scale: _controller.drive(Tween(begin: 0.5,end: 1.2)),
                  child: FlutterLogo(key:UniqueKey(),size: 120,),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      _controller.forward(); //正序播放一次
                    }, child: const Text("Forward")),
                    ElevatedButton(onPressed: (){
                      _controller.reverse(); //倒序播放一次
                    }, child: const Text("Reverse")),
                    ElevatedButton(onPressed: (){
                      _controller.stop(); //停止播放
                    }, child: const Text("Stop")),
                    ElevatedButton(onPressed: (){
                      _controller.reset(); //重置
                    }, child: const Text("rest")),
                    ElevatedButton(onPressed: (){
                      _controller.repeat(); //重复播放
                    }, child: const Text("repeat"))
                  ],
                ),
                const Divider(),
                const Text('SlideTransition动画'),
                const SizedBox(height: 40,),
                SlideTransition(
                  //Tween配置运动的参数
                  // position: _controller.drive(Tween(begin: const Offset(0,0),end: const Offset(0.5,0.5))),
                  position: Tween(begin: const Offset(0.00, 0.00),end: const Offset(0, 2)).chain(
                    CurveTween(curve: Curves.bounceInOut)
                  ).chain(CurveTween(curve: const Interval(0.4, 0.6))).animate(_controller),
                  child: FlutterLogo(key:UniqueKey(),size: 120,),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      _controller.forward(); //正序播放一次
                    }, child: const Text("Forward")),
                    ElevatedButton(onPressed: (){
                      _controller.reverse(); //倒序播放一次
                    }, child: const Text("Reverse")),
                    ElevatedButton(onPressed: (){
                      _controller.stop(); //停止播放
                    }, child: const Text("Stop")),
                    ElevatedButton(onPressed: (){
                      _controller.reset(); //重置
                    }, child: const Text("rest")),
                    ElevatedButton(onPressed: (){
                      _controller.repeat(); //重复播放
                    }, child: const Text("repeat"))
                  ],
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
