import 'package:flutter/material.dart';

class MyDialog extends Dialog {
   final String title;
   final String content;
   final Function()? onTap;
   const MyDialog({Key? key,required this.title, required this.content,required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(5),
                  child: Stack(
                    children: [
                       Align(
                        alignment: Alignment.centerLeft,
                        child: Text(title),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: onTap,
                          child: const Icon(Icons.close),
                        ),
                      )
                    ],
                  ),
              ),
              const Divider(),
               Container(
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                child:  Text(content),
              )
            ],
          ),
        ),
      ),
    );
  }
}
