import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
class DeviceInfoPage extends StatefulWidget {
  const DeviceInfoPage({Key? key}) : super(key: key);

  @override
  State<DeviceInfoPage> createState() => _DeviceInfoPageState();
}

class _DeviceInfoPageState extends State<DeviceInfoPage> {
  late List<Widget> _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDevieceInfo();
  }
  _getDevieceInfo() async{
    final deviceInfoPlugin = DeviceInfoPlugin();
    final deviceInfo = await deviceInfoPlugin.deviceInfo;
    final deviceInfoMap = deviceInfo.toMap();
    var tempList = deviceInfoMap.entries.map((e) =>
      ListTile(
        title: Text("${e.key} : ${e.value}"),
      )
    ).toList();
    setState(() {
      _list = tempList;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('设备信息页面'),),
      body: ListView(
        children: _list,
      ),
    );
  }
}
