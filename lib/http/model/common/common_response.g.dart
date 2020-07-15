// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommonResponse<Object>> _$commonResponseSerializer =
    new _$CommonResponseSerializer();

class _$CommonResponseSerializer
    implements StructuredSerializer<CommonResponse<Object>> {
  @override
  final Iterable<Type> types = const [CommonResponse, _$CommonResponse];
  @override
  final String wireName = 'CommonResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CommonResponse<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[
      'stateCode',
      serializers.serialize(object.stateCode,
          specifiedType: const FullType(int)),
      'stateDesc',
      serializers.serialize(object.stateDesc,
          specifiedType: const FullType(String)),
    ];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data, specifiedType: parameterT));
    }
    return result;
  }

  @override
  CommonResponse<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new CommonResponseBuilder<Object>()
        : serializers.newBuilder(specifiedType) as CommonResponseBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stateCode':
          result.stateCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stateDesc':
          result.stateDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterT);
          break;
      }
    }

    return result.build();
  }
}

class _$CommonResponse<T> extends CommonResponse<T> {
  @override
  final int stateCode;
  @override
  final String stateDesc;
  @override
  final T data;

  factory _$CommonResponse([void Function(CommonResponseBuilder<T>) updates]) =>
      (new CommonResponseBuilder<T>()..update(updates)).build();

  _$CommonResponse._({this.stateCode, this.stateDesc, this.data}) : super._() {
    if (stateCode == null) {
      throw new BuiltValueNullFieldError('CommonResponse', 'stateCode');
    }
    if (stateDesc == null) {
      throw new BuiltValueNullFieldError('CommonResponse', 'stateDesc');
    }
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('CommonResponse', 'T');
    }
  }

  @override
  CommonResponse<T> rebuild(void Function(CommonResponseBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonResponseBuilder<T> toBuilder() =>
      new CommonResponseBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonResponse &&
        stateCode == other.stateCode &&
        stateDesc == other.stateDesc &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, stateCode.hashCode), stateDesc.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommonResponse')
          ..add('stateCode', stateCode)
          ..add('stateDesc', stateDesc)
          ..add('data', data))
        .toString();
  }
}

class CommonResponseBuilder<T>
    implements Builder<CommonResponse<T>, CommonResponseBuilder<T>> {
  _$CommonResponse<T> _$v;

  int _stateCode;
  int get stateCode => _$this._stateCode;
  set stateCode(int stateCode) => _$this._stateCode = stateCode;

  String _stateDesc;
  String get stateDesc => _$this._stateDesc;
  set stateDesc(String stateDesc) => _$this._stateDesc = stateDesc;

  T _data;
  T get data => _$this._data;
  set data(T data) => _$this._data = data;

  CommonResponseBuilder();

  CommonResponseBuilder<T> get _$this {
    if (_$v != null) {
      _stateCode = _$v.stateCode;
      _stateDesc = _$v.stateDesc;
      _data = _$v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonResponse<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommonResponse<T>;
  }

  @override
  void update(void Function(CommonResponseBuilder<T>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommonResponse<T> build() {
    final _$result = _$v ??
        new _$CommonResponse<T>._(
            stateCode: stateCode, stateDesc: stateDesc, data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
