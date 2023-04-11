import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress案例'),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation(Colors.white)
            ),
            SizedBox(height: 20,),
            LinearProgressIndicator(),
            SizedBox(height: 20,),
            LinearProgressIndicator(
                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation(Colors.white)
            ),
            SizedBox(height: 20,),

            LinearProgressIndicator(
                value: 0.56,

            ),
            SizedBox(height: 20,),

            LinearProgressIndicator(
                value: 0.85,
            ),
            SizedBox(height: 20,),
             Text('ios进度条'),
            SizedBox(height: 20,),
            CupertinoActivityIndicator(),
            CupertinoActivityIndicator(
              radius: 20,
            )


          ],
        ),
      ),
    );
  }
}
