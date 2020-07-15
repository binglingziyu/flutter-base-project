// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginData> _$loginDataSerializer = new _$LoginDataSerializer();

class _$LoginDataSerializer implements StructuredSerializer<LoginData> {
  @override
  final Iterable<Type> types = const [LoginData, _$LoginData];
  @override
  final String wireName = 'LoginData';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(User)),
    ];

    return result;
  }

  @override
  LoginData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginData extends LoginData {
  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final User user;

  factory _$LoginData([void Function(LoginDataBuilder) updates]) =>
      (new LoginDataBuilder()..update(updates)).build();

  _$LoginData._({this.token, this.refreshToken, this.user}) : super._() {
    if (token == null) {
      throw new BuiltValueNullFieldError('LoginData', 'token');
    }
    if (refreshToken == null) {
      throw new BuiltValueNullFieldError('LoginData', 'refreshToken');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('LoginData', 'user');
    }
  }

  @override
  LoginData rebuild(void Function(LoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginDataBuilder toBuilder() => new LoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginData &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, token.hashCode), refreshToken.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginData')
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('user', user))
        .toString();
  }
}

class LoginDataBuilder implements Builder<LoginData, LoginDataBuilder> {
  _$LoginData _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  LoginDataBuilder();

  LoginDataBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _refreshToken = _$v.refreshToken;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginData;
  }

  @override
  void update(void Function(LoginDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginData build() {
    _$LoginData _$result;
    try {
      _$result = _$v ??
          new _$LoginData._(
              token: token, refreshToken: refreshToken, user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
