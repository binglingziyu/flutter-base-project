
import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../../http/model/common/serializers.dart';
part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
//  "gid": "USER888888888888888888",
//  "username": "hubin",
//  "nickname": "binglingziyu",
//  "avatar": "http://cloudstorage.ihubin.com/blog/profile/internet_icon.jpeg",
//  "gender": "男",
//  "status": 0,
//  "createTime": 1569229882540,
//  "updateTime": 1569229882540

  @nullable
  String get gid;
  @nullable
  String get username;
  @nullable
  String get nickname;
  @nullable
  String get avatar;
  @nullable
  String get gender;
  @nullable
  int get status;
  @nullable
  int get createTime;
  @nullable
  int get updateTime;

  User._();
  factory User([Function(UserBuilder b) updates]) = _$User;
  static Serializer<User> get serializer => _$userSerializer;
  factory User.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

}