
import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../../http/model/common/serializers.dart';
import '../../../http/model/user/user.dart';

part 'login_data.g.dart';

abstract class LoginData implements Built<LoginData, LoginDataBuilder> {

  String get token;
  String get refreshToken;
  User get user;

  LoginData._();
  factory LoginData([updates(LoginDataBuilder b)]) = _$LoginData;
  static Serializer<LoginData> get serializer => _$loginDataSerializer;
  factory LoginData.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(LoginData.serializer, json);
  }

  toJson() {
    return json.encode(serializers.serializeWith(LoginData.serializer, this));
  }

}