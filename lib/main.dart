import 'package:flutter/material.dart';
import './routers/routers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: const [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        //此处
         Locale('zh', 'CH'),
         Locale('en', 'US'),
      ],
    );
  }
}








