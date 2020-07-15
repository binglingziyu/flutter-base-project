
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../api.dart';
import '../../http/model/common/common_response.dart';

part 'login_client.g.dart';

@RestApi(baseUrl: Api.BASE_URL)
abstract class LoginClient {

  factory LoginClient(Dio dio, {String baseUrl}) = _LoginClient;

  /// 登录接口
  /// {
  ///   "password": "string",
  ///   "username": "string"
  /// }
  @POST("/v1/login")
  Future<CommonResponse> login(@Body() Map loginBody);

  /// 注册接口
  /// {
  ///   "code": "string",
  ///   "gender": "string",
  ///   "nickname": "string",
  ///   "password": "string",
  ///   "username": "string"
  /// }
  @POST("/v1/register")
  Future<CommonResponse> register(@Body() Map registerBody);

}