
import 'package:dio/dio.dart';
import 'package:dio_log/interceptor/dio_log_interceptor.dart';

import 'client/login_client.dart';
import 'interceptor/common_interceptor.dart';
import 'model/common/common_response.dart';

class Api {

  static const String BASE_URL = "http://demo.testdata.online/";
  factory Api() => _getInstance();
  static Api get instance => _getInstance();
  static Api _instance;

  LoginClient _loginClient;
//  UserClient _userClient;
//  CatalogClient _catalogClient;
  Api._internal() {
    if (null == _instance) {
      BaseOptions options = BaseOptions(
        baseUrl: BASE_URL,
        receiveTimeout: 10 * 1000, // 10秒
        connectTimeout: 10 * 1000, // 10秒
      );
      Dio dio = Dio(options);
      dio.interceptors.add(CommonInterceptor());
      //dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
      dio.interceptors.add(DioLogInterceptor());
      _loginClient = LoginClient(dio);
//      _userClient = UserClient(dio);
//      _catalogClient = CatalogClient(dio);
    }
  }

  static Api _getInstance() {
    if (_instance == null) {
      _instance = Api._internal();
    }
    return _instance;
  }

  Future<CommonResponse> login(Map loginBody) {
    return _loginClient.login(loginBody);
  }
//
//  Future<CommonTreeResponse<Catalog>> catalogTree(String catalogType) {
//    return _catalogClient.catalogTree(catalogType);
//  }
//
//  Future<CommonResponse<User>> userInfo() {
//    return _userClient.userInfo();
//  }

}