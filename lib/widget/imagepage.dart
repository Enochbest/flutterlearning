import 'package:flutter/material.dart';

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
