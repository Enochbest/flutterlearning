import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
class ScanCodePage extends StatefulWidget {
  const ScanCodePage({Key? key}) : super(key: key);

  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {

  void _doBarcodeScan() async {
    var options = const ScanOptions(
// set the options
        autoEnableFlash: true,
        strings: {
          'cancel': '取消',
          'flash_on': '打开Flash',
          'flash_off': '关闭Flash',
        });
    var result = await BarcodeScanner.scan(options: options);
    print(result.type); // The result type (barcode, cancelled, failed)
    print(result.rawContent); // The barcode content
    print(result.format); // The barcode format (as enum)
    print(result.formatNote); // If a unknown format was scanned this field contains anote
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('二维码扫描'),),
      body:  Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: _doBarcodeScan, child: const Text('开始扫描'))
          ],
        ),
      ),
    );
  }
}
