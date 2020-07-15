
import 'dart:async';

import 'package:flutter/material.dart';
import '../../../log/log.dart';
import '../../../router/application.dart';
import '../../../router/routers.dart';
import '../../../ui/page/base_page/base_stateful_state.dart';
import '../../../util/login_util.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() {
    return new _WelcomePageState();
  }
}

class _WelcomePageState extends BaseStatefulState<WelcomePage> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = new Timer(const Duration(milliseconds: 1500), () {
      _selectPage();
    });
//    Application.doInit().then((_){});
  }

  void _selectPage() {
    Log.i("欢迎页面，是否已登录：${LoginUtil.isLogin()}");
    Application.router.navigateTo(context, Routes.main, clearStack: true);
//    if (LoginUtil.isLogin()) {
//      Application.router.navigateTo(context, Routes.main, clearStack: true);
//    } else {
//      Application.router.navigateTo(context, Routes.login, clearStack: true);
//    }
  }

  @override
  void dispose() {
    if(_timer != null) _timer.cancel();
    super.dispose();
  }

  @override
  Future<bool> onWillPop() async {
    return false;
  }

  @override
  Widget buildUI(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Text("Welcome to App!"),),
      ),
    );
  }
}
