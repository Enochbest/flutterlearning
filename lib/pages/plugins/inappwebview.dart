import 'package:flutter/material.dart';
class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WebView插件'),),
      body: Column(
        children: const [
          // Expanded(
          //   child: InAppWebView(
          //     initialUrlRequest: URLRequest(
          //         url: Uri.parse("https://www.baidu.com/")
          //     ),
          //   ),
          // )
          Text('6666')
        ],
      ),
    );
  }
}
