
import 'dart:convert';

import 'package:flutter/material.dart';
import '../../../log/log.dart';
import '../../../router/application.dart';
import '../../../router/routers.dart';
import '../../../ui/component/common_text_title.dart';
import '../../../http/model/common/common_response.dart';
import '../../../http/model/user/user.dart';
import '../../../ui/page/base_page/base_stateless_page.dart';

class MainPage extends BaseStatelessPage {


  @override
  Widget buildUI(BuildContext context) {
    Log.i("MainPage buildUI!");
    return Scaffold(
      appBar: AppBar(
        title: const CommonTextTitle("MainPage"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
//            var loginBody = <String, dynamic>{};
//            loginBody["username"] = "hubin";
//            loginBody["password"] = "hubin123";
//            Api.instance.login(loginBody).then((value) => {
//              logger.i("登录接口返回数据：${value.toJson()}")
//            });
              User user = User((b) => b
                ..gid = "GID000"
                ..username = "hubin"
                ..nickname = "binglingziyu"
                ..gender =  "男"
              );
              CommonResponse<User> commonResponse = CommonResponse((b) => b
                ..stateCode = 0
                ..stateDesc = "OK"
                ..data = user
              );
              var json = commonResponse.toJson();
              print("json is String : ${json is String}");
              print(json);

              var jsonStr = "{\"stateCode\":0,\"stateDesc\":\"OK\"}";
              CommonResponse<User> r2 = CommonResponse<User>.fromJson(jsonDecode(jsonStr));
              print(r2.toJson());
            },
            title: const Text("调用登录接口"),
          ),
          ListTile(
            onTap: () {
              Application.router.navigateTo(context, Routes.setting);
            },
            title: const Text("跳转设置页"),
          ),
          ListTile(
            onTap: () {
              Log.i("开始做事！");
            },
            title: const Text("其他功能测试点"),
          ),
        ],
      ),
    );
  }

}