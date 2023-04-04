import 'dart:async';

import 'package:flutter/material.dart';

class MyPageViewSwiper extends StatefulWidget {
  final double width;
  final double height;
  final List<String> list;
  const MyPageViewSwiper({Key? key, this.width=double.infinity,this.height=200,required this.list}) : super(key: key);

  @override
  State<MyPageViewSwiper> createState() => _MyPageViewSwiperState();
}

class _MyPageViewSwiperState extends State<MyPageViewSwiper> {
   int _currentIndex = 0;
   List<Widget> pageList = [];
   late PageController _pageController;
   late Timer timer;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(var i = 0;i<widget.list.length;i++){
      pageList.add(
        ImagePage(width: widget.width,height:widget.height,src: widget.list[i])
      );
    }
    _pageController = PageController(initialPage: 0);
    timer = Timer.periodic(const Duration(seconds: 5), (t) {
      _pageController.animateToPage((_currentIndex+1)%pageList.length, duration: const Duration(milliseconds: 200), curve: Curves.linear);
     });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 200,
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index){
                  setState(() {
                    _currentIndex = index % pageList.length;
                  });
                },
                itemCount: 1000,
                itemBuilder: (context,index){
                  return pageList[index%pageList.length];
                }
            )
        ),
        Positioned(
          left: 0,
          bottom: 2,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pageList.length, (index) =>
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
    );
  }
}

class ImagePage extends StatelessWidget {
  final double width;
  final double height;
  final String src;

  const ImagePage({Key? key,  this.width=double.infinity,  this.height = 200, required this.src}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.network(src,fit: BoxFit.cover,),
    );
  }
}


