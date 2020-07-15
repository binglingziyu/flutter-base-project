import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'common_response.g.dart';

abstract class CommonResponse<T> implements Built<CommonResponse<T>, CommonResponseBuilder<T>> {

  int get stateCode;
  String get stateDesc;
  @nullable
  T get data;
  static Type typeOf<U>() => U;
  CommonResponse._();
  factory CommonResponse([updates(CommonResponseBuilder<T> b)]) = _$CommonResponse<T>;
  static Serializer<CommonResponse> get serializer => _$commonResponseSerializer;
  factory CommonResponse.fromJson(Map<String, dynamic> json) {
    Type type = typeOf<T>();
    var specifiedType = FullType(CommonResponse, [FullType(type)]);
    return serializers.deserialize(json, specifiedType: specifiedType);
  }

  toJson() {
    return json.encode(serializers.serializeWith(CommonResponse.serializer, this));
  }

}