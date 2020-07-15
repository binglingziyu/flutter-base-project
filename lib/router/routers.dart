import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'router_handler.dart';
import '../util/string_util.dart';

class Routes {
  static const String welcome = "/";
  static const String main = "/main";
  static const String login = "/login";
  static const String setting = "/setting";


  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return Container();
        });
//    router.globalNavigatorKey = GlobalKey<NavigatorState>();
    router.define(main, handler: mainHandler);
    router.define(welcome, handler: welcomeHandler);
    router.define(login, handler: loginHandler);
    router.define(setting, handler: settingHandler);
  }

  static String withParams(String route, Map params) {
    if(params != null && params.isNotEmpty) {
      String paramStr = "";
      params.forEach((key, value) {
        if(StringUtil.isNotBlank(paramStr)) {
          paramStr += "&";
        }
        paramStr += "${Uri.encodeQueryComponent(key)}=${Uri.encodeQueryComponent('$value')}";
      });
      return "$route?$paramStr";
    }
    return route;
  }

}
