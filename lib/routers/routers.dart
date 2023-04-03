import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/user/register_third.dart';

import '../pages/tabs.dart';
import '../pages/form.dart';
import '../pages/news.dart';
import '../pages/search.dart';
import '../pages/user/login.dart';
import '../pages/user/register_first.dart';
import '../pages/user/register_second.dart';
import '../pages/user/register_third.dart';
import '../pages/dialog.dart';
import '../pages/pageview.dart';

 Map routes = {
  "/":(contxt)=>const Tabs(),
  "/form":(contxt, {arguments})=> FormPage(arguments:arguments),
  "/news":(contxt)=>const NewsPage(aid: 12),
  "/search":(contxt)=>const SearchPage(),
  "/login":(contxt)=>const LoginPage(),
  "/reg-first":(contxt)=>const RegFirstPage(),
  "/reg-second":(contxt)=>const RegSecondPage(),
  "/reg-third":(contxt)=>const RegThirdPage(),
  "/dialog":(contxt)=>const DialogPage(),
  "/pageview":(contxt)=>const PageViewPage(),
};

 var onGenerateRoute=(RouteSettings settings){
// 统一处理
final String? name = settings.name;
final Function? pageContentBuilder = routes[name];
if (pageContentBuilder != null) {
if (settings.arguments != null) {
final Route route = MaterialPageRoute(
builder: (context) =>
pageContentBuilder(context, arguments: settings.arguments));
return route;} else {
final Route route = MaterialPageRoute(
builder: (context) => pageContentBuilder(context));
return route;
}
}
return null;
};