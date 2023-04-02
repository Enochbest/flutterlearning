import 'package:flutter/material.dart';
import './routers/routers.dart';
void main(){
  runApp( const Myapp());
}


class Myapp extends StatelessWidget {
   const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        // home: const Tabs()
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}








