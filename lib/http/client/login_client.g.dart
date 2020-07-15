// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LoginClient implements LoginClient {
  _LoginClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://things.frp.testdata.online/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  login(loginBody) async {
    ArgumentError.checkNotNull(loginBody, 'loginBody');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginBody ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/v1/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CommonResponse<dynamic>.fromJson(_result.data);
    return value;
  }

  @override
  register(registerBody) async {
    ArgumentError.checkNotNull(registerBody, 'registerBody');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(registerBody ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/v1/register',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CommonResponse<dynamic>.fromJson(_result.data);
    return value;
  }
}
