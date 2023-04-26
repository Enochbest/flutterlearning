import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/hero.dart';
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
import '../pages/pageviewbuilder.dart';
import '../pages/pageviewfullpage.dart';
import '../pages/pageviewswiper.dart';
import '../pages/autopageview.dart';
import '../pages/pageviewkeepalive.dart';
import '../pages/keylearningpage.dart';
import '../pages/childwidgetstate.dart';
import '../pages/antmitedlist.dart';
import '../pages/yinshi_animation.dart';
import '../pages/MyDrawer.dart';
import '../pages/xianshi_animation.dart';
import '../pages/jiaocuo_animation.dart';
import '../pages/heropage.dart';
import '../pages/hero.dart';
import '../pages/form/textfied.dart';
import '../pages/form/login.dart';
import '../pages/form/radio.dart';
import '../pages/form/checkbox.dart';
import '../pages/form/formcase.dart';
import '../pages/async/progress.dart';
import '../pages/async/futurepage.dart';
import '../pages/async/futurebuilder.dart';
import '../pages/async/streampage.dart';
import '../pages/async/streambuilderpage.dart';
import '../pages/async/streamcontroller.dart';
import '../pages/async/streamgame.dart';
import '../pages/time_picker.dart';
import '../pages/dio_request.dart';
import '../pages/dio_future.dart';
import '../pages/refresh_list.dart';
import '../pages/news_detail.dart';
import '../pages/plugins/inappwebview.dart';
import '../pages/plugins/pickerimage.dart';
import '../pages/plugins/videoplay.dart';
import '../pages/plugins/getdeviceinfo.dart';

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
  "/pageviewbuilder":(contxt)=>const PageViewBuilderPage(),
  "/pageviewfullpage":(contxt)=>const PageViewFullPage(),
  "/pageviewswiper":(contxt)=>const PageViewSwiper(),
  "/autopageview":(contxt)=>const AutoPageViewPage(),
  "/pageviewkeepalive":(contxt)=>const PageViewKeepAlive(),
  "/keylearningpage":(contxt)=>const KeyLearningPage(),
  "/childwidgetstate":(contxt)=>const ChildPageState(),
  "/antmitedlist":(contxt)=>const AntmitedList(),
  "/yinshi_animation":(contxt)=>const YinshiAnimation(),
  "/MyDrawer":(contxt)=>const MyDrawerPlus(),
  "/xianshi_animation":(contxt)=>const XianshiAnimation(),
  "/jiaocuo_animation":(contxt)=>const JiaocuoAnimation(),
  "/heropage":(contxt)=>const HeroPage(),
  "/hero":(contxt,{arguments})=> HeroAnimationPage(arguments:arguments),
  "/textfied":(contxt)=> const TextFieldPage(),
  "/mylogin":(contxt)=> const MyLoginPage(),
  "/radio":(contxt)=> const RadioPage(),
  "/formcase":(contxt)=> const FormPageCase(),
  "/progress":(contxt)=> const ProgressPage(),
  "/futurepage":(contxt)=> const FuturePage(),
  "/futurebuilder":(contxt)=> const FutureBuilderPage(),
  "/streampage":(contxt)=> const StreamPage(),
  "/streambuilderpage":(contxt)=> const StreamBuilderPage(),
  "/streamcontroller":(contxt)=> const StreamControllerPage(),
  "/streamgame":(contxt)=> const StreamGamePage(),
  "/timepicker":(contxt)=> const TimePickerPage(),
  "/diorequest":(contxt)=> const DioRequestPage(),
  "/diofuture":(contxt)=> const DioFuturePage(),
  "/refreshpage":(contxt)=> const RefreshListPage(),
  "/newsdetails":(contxt, {arguments})=> NewsDetailsPage(arguments:arguments),
  "/appwebview":(contxt)=> const WebViewPage(),
  "/pickerimage":(contxt)=> const PickerImagePage(),
  "/videoplayer":(contxt)=> const VideoPlayPage(),
  "/getdeviceinfo":(contxt)=> const DeviceInfoPage(),
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