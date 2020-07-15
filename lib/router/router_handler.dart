
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../ui/page/login_page/login_page.dart';
import '../ui/page/main_page/main_page.dart';
import '../ui/page/setting_page/setting_page.dart';
import '../ui/page/welcome_page/welcome_page.dart';

// 欢迎页
var welcomeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return WelcomePage();
  },
);

// 首页
var mainHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return MainPage();
  },
);

// 登录页
var loginHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return LoginPage();
  },
);

// 设置页
var settingHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SettingPage();
  },
);

