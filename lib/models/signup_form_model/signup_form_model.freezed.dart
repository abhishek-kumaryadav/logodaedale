// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'signup_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupFormModelTearOff {
  const _$SignupFormModelTearOff();

  _SignupFormModel call(
      {String username = "defaultValue",
      String email = "defaultValue",
      String password = "defaultValue"}) {
    return _SignupFormModel(
      username: username,
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $SignupFormModel = _$SignupFormModelTearOff();

/// @nodoc
mixin _$SignupFormModel {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupFormModelCopyWith<SignupFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormModelCopyWith<$Res> {
  factory $SignupFormModelCopyWith(
          SignupFormModel value, $Res Function(SignupFormModel) then) =
      _$SignupFormModelCopyWithImpl<$Res>;
  $Res call({String username, String email, String password});
}

/// @nodoc
class _$SignupFormModelCopyWithImpl<$Res>
    implements $SignupFormModelCopyWith<$Res> {
  _$SignupFormModelCopyWithImpl(this._value, this._then);

  final SignupFormModel _value;
  // ignore: unused_field
  final $Res Function(SignupFormModel) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignupFormModelCopyWith<$Res>
    implements $SignupFormModelCopyWith<$Res> {
  factory _$SignupFormModelCopyWith(
          _SignupFormModel value, $Res Function(_SignupFormModel) then) =
      __$SignupFormModelCopyWithImpl<$Res>;
  @override
  $Res call({String username, String email, String password});
}

/// @nodoc
class __$SignupFormModelCopyWithImpl<$Res>
    extends _$SignupFormModelCopyWithImpl<$Res>
    implements _$SignupFormModelCopyWith<$Res> {
  __$SignupFormModelCopyWithImpl(
      _SignupFormModel _value, $Res Function(_SignupFormModel) _then)
      : super(_value, (v) => _then(v as _SignupFormModel));

  @override
  _SignupFormModel get _value => super._value as _SignupFormModel;

  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignupFormModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupFormModel implements _SignupFormModel {
  _$_SignupFormModel(
      {this.username = "defaultValue",
      this.email = "defaultValue",
      this.password = "defaultValue"});

  @JsonKey(defaultValue: "defaultValue")
  @override
  final String username;
  @JsonKey(defaultValue: "defaultValue")
  @override
  final String email;
  @JsonKey(defaultValue: "defaultValue")
  @override
  final String password;

  @override
  String toString() {
    return 'SignupFormModel(username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignupFormModel &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignupFormModelCopyWith<_SignupFormModel> get copyWith =>
      __$SignupFormModelCopyWithImpl<_SignupFormModel>(this, _$identity);
}

abstract class _SignupFormModel implements SignupFormModel {
  factory _SignupFormModel({String username, String email, String password}) =
      _$_SignupFormModel;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignupFormModelCopyWith<_SignupFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}
