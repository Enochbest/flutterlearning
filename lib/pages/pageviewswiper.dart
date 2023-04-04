import 'package:flutter/material.dart';
import '../widget/pageviewswiper.dart';

class PageViewSwiper extends StatefulWidget {
  const PageViewSwiper({Key? key}) : super(key: key);
  @override
  State<PageViewSwiper> createState() => _PageViewSwiperState();
}

class _PageViewSwiperState extends State<PageViewSwiper> {
  List<String> list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list =  [
          'https://www.itying.com/images/flutter/1.png',
          'https://www.itying.com/images/flutter/2.png',
          'https://www.itying.com/images/flutter/3.png'
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewSwiper'),
      ),
      body:ListView(
        children: [
          MyPageViewSwiper(list: list)
        ],
      )
    );
  }
}
