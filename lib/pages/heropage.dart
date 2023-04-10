import 'package:flutter/material.dart';
import '../res/listData.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  Widget _initGridViewData(context,index){
    return InkWell(
      onTap: (){
        print(listData[index]);
        Navigator.pushNamed(context, '/hero',arguments: {
          "imageUrl" : listData[index]["imageUrl"],
          "initialPage" : index,
          "listDate" : listData
        },

        );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black26
            )
        ),
        child: Column(
          children: [
            // Image.network(listData[index]["imageUrl"]),
            Hero(tag: listData[index]["imageUrl"], child: Image.network(listData[index]["imageUrl"])),
            const SizedBox(height: 20,),
            Text(listData[index]["title"],style: const TextStyle(
                fontSize: 18
            ),)
          ],
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero动画'),),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: listData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,//宽高比
            crossAxisSpacing: 10,//水平间距
            mainAxisSpacing: 10,//垂直间距
            crossAxisCount: 2
        ),
        itemBuilder: _initGridViewData,
      ),
    );
  }
}
