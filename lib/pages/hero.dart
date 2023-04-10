import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../res/listData.dart';

class HeroAnimationPage extends StatefulWidget {
  final Map arguments;
  const HeroAnimationPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<HeroAnimationPage> createState() => _HeroAnimationPageState();
}

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  late List  listData = [];
  late int initialPage = 0;
  late int currentPage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listData = widget.arguments["listDate"];
    initialPage = widget.arguments["initialPage"];
    currentPage = initialPage+1;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Hero(
          tag: widget.arguments["imageUrl"],
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.black,
                body: Center(
                  // 配置单张图片预览
                  // child: PhotoView(imageProvider: NetworkImage(widget.arguments["imageUrl"]),)
                    child: PhotoViewGallery.builder(
                        itemCount: listData.length,
                        pageController: PageController(initialPage: initialPage),
                        onPageChanged: (index){
                          setState(() {
                            currentPage = index +1;
                          });
                        },
                        builder: ((context,index){
                          return PhotoViewGalleryPageOptions(
                              imageProvider: NetworkImage(listData[index]["imageUrl"])
                          );
                        })
                    )
                ),
              ),
                Positioned(
                left: 10,
                right: 10,
                bottom: 20,
                child:Container(
                  alignment:Alignment.center,
                  child:   Text("$currentPage/${listData.length}",style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.none
                  ),),
                )
              )
            ],
          )
      ),
    );
  }
}
