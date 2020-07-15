import 'package:dio/dio.dart';

class CommonInterceptor extends Interceptor  {

  @override
  Future onRequest(RequestOptions options) {
    // 统一添加请求头
//    if(LoginUtil.isLogin()) {
//      options.headers["Authorization"] = LoginUtil.getToken();
//      options.headers["Authorization-Refresh"] = LoginUtil.getRefreshToken();
//    }
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
//    Headers headers = response.headers;
//    String tokenOption = headers["TOKEN-REFRESH"]?.first;
//    // 有 TOKEN 刷新
//    if(StringUtil.isNotBlank(tokenOption) && StringUtil.isEqual(tokenOption, "NEW")) {
//      String token = headers["Authorization"]?.first;
//      String refreshToken = headers["Authorization-Refresh"]?.first;
//      // 持久化新 TOKEN
//      if(StringUtil.isAllNotBlank([token, refreshToken])) {
//        LoginUtil.refreshToken(token, refreshToken);
//      }
//    }
    return super.onResponse(response);
  }


}