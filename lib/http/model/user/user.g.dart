// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.gid != null) {
      result
        ..add('gid')
        ..add(serializers.serialize(object.gid,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.nickname != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(object.nickname,
            specifiedType: const FullType(String)));
    }
    if (object.avatar != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(object.avatar,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.createTime != null) {
      result
        ..add('createTime')
        ..add(serializers.serialize(object.createTime,
            specifiedType: const FullType(int)));
    }
    if (object.updateTime != null) {
      result
        ..add('updateTime')
        ..add(serializers.serialize(object.updateTime,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gid':
          result.gid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createTime':
          result.createTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updateTime':
          result.updateTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String gid;
  @override
  final String username;
  @override
  final String nickname;
  @override
  final String avatar;
  @override
  final String gender;
  @override
  final int status;
  @override
  final int createTime;
  @override
  final int updateTime;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.gid,
      this.username,
      this.nickname,
      this.avatar,
      this.gender,
      this.status,
      this.createTime,
      this.updateTime})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        gid == other.gid &&
        username == other.username &&
        nickname == other.nickname &&
        avatar == other.avatar &&
        gender == other.gender &&
        status == other.status &&
        createTime == other.createTime &&
        updateTime == other.updateTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, gid.hashCode), username.hashCode),
                            nickname.hashCode),
                        avatar.hashCode),
                    gender.hashCode),
                status.hashCode),
            createTime.hashCode),
        updateTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('gid', gid)
          ..add('username', username)
          ..add('nickname', nickname)
          ..add('avatar', avatar)
          ..add('gender', gender)
          ..add('status', status)
          ..add('createTime', createTime)
          ..add('updateTime', updateTime))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _gid;
  String get gid => _$this._gid;
  set gid(String gid) => _$this._gid = gid;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _nickname;
  String get nickname => _$this._nickname;
  set nickname(String nickname) => _$this._nickname = nickname;

  String _avatar;
  String get avatar => _$this._avatar;
  set avatar(String avatar) => _$this._avatar = avatar;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _createTime;
  int get createTime => _$this._createTime;
  set createTime(int createTime) => _$this._createTime = createTime;

  int _updateTime;
  int get updateTime => _$this._updateTime;
  set updateTime(int updateTime) => _$this._updateTime = updateTime;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _gid = _$v.gid;
      _username = _$v.username;
      _nickname = _$v.nickname;
      _avatar = _$v.avatar;
      _gender = _$v.gender;
      _status = _$v.status;
      _createTime = _$v.createTime;
      _updateTime = _$v.updateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            gid: gid,
            username: username,
            nickname: nickname,
            avatar: avatar,
            gender: gender,
            status: status,
            createTime: createTime,
            updateTime: updateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
