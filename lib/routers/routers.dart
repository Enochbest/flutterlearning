import 'package:flutter/material.dart';

import '../pages/tabs.dart';
import '../pages/form.dart';
import '../pages/news.dart';
import '../pages/search.dart';

 Map routes = {
  "/":(contxt)=>const Tabs(),
  "/form":(contxt, {arguments})=> FormPage(arguments:arguments),
  "/news":(contxt)=>const NewsPage(aid: 12),
  "/search":(contxt)=>const SearchPage(),
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