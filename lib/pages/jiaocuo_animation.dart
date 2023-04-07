import 'package:flutter/material.dart';

class JiaocuoAnimation extends StatefulWidget {
  const JiaocuoAnimation({Key? key}) : super(key: key);

  @override
  State<JiaocuoAnimation> createState() => _JiaocuoAnimationState();
}

class _JiaocuoAnimationState extends State<JiaocuoAnimation> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  bool flag = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 1));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('交错动画'),),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
              flag?_controller.forward() : _controller.reverse();
              flag=!flag;
          },
          child: const Icon(Icons.refresh),
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('AnimatedIcon动画'),
                  AnimatedIcon(
                      size: 40,
                      icon: AnimatedIcons.close_menu,
                      progress: _controller
                  ),
                  const SizedBox(height: 20,),
                  AnimatedIcon(
                      size: 40,
                      icon: AnimatedIcons.search_ellipsis,
                      progress: _controller
                  ),
                  const Divider(),
                  const Text('自定义ScaleTransition交错动画'),
                  Stack(
                    children:  [
                      ScaleTransition(
                          scale: _controller.drive(Tween(begin: 0.0, end: 1.0).chain(
                              CurveTween(curve: const Interval(0.5,1))
                          )),
                          child:const  Icon(Icons.close,size: 40,)
                      ),
                      ScaleTransition(
                          scale: _controller.drive(Tween(begin: 1.0, end: 0.0).chain(
                            CurveTween(curve: const Interval(0,0.5))
                          )),
                          child:const  Icon(Icons.search,size: 40,)
                      )
                    ],
                  ),
                  const Divider(),
                  const Text('自定义ScaleTransition交错动画'),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        SlidingBox(controller: _controller, color:  Colors.blue[300], curve: const Interval(0,0.2)),
                        SlidingBox(controller: _controller, color:  Colors.blue[500], curve: const Interval(0.2,0.4)),
                        SlidingBox(controller: _controller, color:  Colors.blue[700], curve: const Interval(0.4,0.6)),
                        SlidingBox(controller: _controller, color:  Colors.blue[900], curve: const Interval(0.6,0.8))
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
    );
  }
}

class SlidingBox extends StatelessWidget {
  final AnimationController controller;
  final Color? color;
  final Curve curve;
  const SlidingBox({Key? key, required this.controller, required this.color, required this.curve}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position:controller.drive(
          Tween(
              begin: const Offset(0.0,0.0),
              end: const Offset(0.5,0.0)
          ).chain(
              CurveTween(curve: curve)
          )
      ),
      child: Container(
        width: 120,
        height: 30,
        color: color,
      ),
    );
  }
}

