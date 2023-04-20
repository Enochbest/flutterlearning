import 'package:flutter/material.dart';

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({Key? key}) : super(key: key);

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('时间选择器'),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${_dateTime.year}-${_dateTime.month}-${_dateTime.day}'),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: () async{
                DateTime?  d = await showDatePicker(
                    context: context,
                    initialDate: _dateTime,
                    firstDate: DateTime(1990,1,1),
                    lastDate: DateTime(2035,12,31)
                );
                if(d!=null){
                  setState(() {
                    _dateTime = d;
                  });
                }
              },
            ),
            InkWell(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${_timeOfDay.hour}-${_timeOfDay.minute}'),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: () async{
              TimeOfDay?  t = await showTimePicker(context: context, initialTime: _timeOfDay);
                if(t!=null){
                  setState(() {
                    _timeOfDay = t;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
