
import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Flutter App'),centerTitle: true,),
      body: const Myapp(),
    ),
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    title: 'Hello Demo',
  ));
}

//创建自定义组件
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover,
                ),
              )
            ),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 180,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child:SizedBox(
                            width: double.infinity,
                            child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                          )
                      ),
                      const SizedBox(height: 10,),
                      Expanded(
                          flex: 1,
                          child:SizedBox(
                            width: double.infinity,
                            child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                          )
                      ),
                    ],
                  ),
                )

            )
          ],
        )
      ],
    );
  }
}

// class IconContainer extends StatelessWidget{
//   final Color color;
//   final IconData icon;
//   const IconContainer(this.icon,{super.key,this.color=Colors.red});
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       alignment: Alignment.center,
//       height: 80,
//       width: 80,
//       decoration:  BoxDecoration(
//         color: color
//       ),
//       child:  Icon(icon,color: Colors.white,size:28),
//     );
//   }
//
// }


