import 'package:flutter/material.dart';
import '';



class InternetStatusPage extends StatefulWidget {
  const InternetStatusPage({Key? key}) : super(key: key);

  @override
  State<InternetStatusPage> createState() => _InternetStatusPageState();
}

class _InternetStatusPageState extends State<InternetStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('检测网络状态'),
      ),
      body: const Center(
        child:  Text('网络状态'),
      ),
    );
  }
}
