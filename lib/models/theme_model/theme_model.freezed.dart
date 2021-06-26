// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeModel _$ThemeModelFromJson(Map<String, dynamic> json) {
  return _ThemeModel.fromJson(json);
}

/// @nodoc
class _$ThemeModelTearOff {
  const _$ThemeModelTearOff();

  _ThemeModel call({bool darkMode = false}) {
    return _ThemeModel(
      darkMode: darkMode,
    );
  }

  ThemeModel fromJson(Map<String, Object> json) {
    return ThemeModel.fromJson(json);
  }
}

/// @nodoc
const $ThemeModel = _$ThemeModelTearOff();

/// @nodoc
mixin _$ThemeModel {
  bool get darkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeModelCopyWith<ThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModelCopyWith<$Res> {
  factory $ThemeModelCopyWith(
          ThemeModel value, $Res Function(ThemeModel) then) =
      _$ThemeModelCopyWithImpl<$Res>;
  $Res call({bool darkMode});
}

/// @nodoc
class _$ThemeModelCopyWithImpl<$Res> implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._value, this._then);

  final ThemeModel _value;
  // ignore: unused_field
  final $Res Function(ThemeModel) _then;

  @override
  $Res call({
    Object? darkMode = freezed,
  }) {
    return _then(_value.copyWith(
      darkMode: darkMode == freezed
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ThemeModelCopyWith<$Res> implements $ThemeModelCopyWith<$Res> {
  factory _$ThemeModelCopyWith(
          _ThemeModel value, $Res Function(_ThemeModel) then) =
      __$ThemeModelCopyWithImpl<$Res>;
  @override
  $Res call({bool darkMode});
}

/// @nodoc
class __$ThemeModelCopyWithImpl<$Res> extends _$ThemeModelCopyWithImpl<$Res>
    implements _$ThemeModelCopyWith<$Res> {
  __$ThemeModelCopyWithImpl(
      _ThemeModel _value, $Res Function(_ThemeModel) _then)
      : super(_value, (v) => _then(v as _ThemeModel));

  @override
  _ThemeModel get _value => super._value as _ThemeModel;

  @override
  $Res call({
    Object? darkMode = freezed,
  }) {
    return _then(_ThemeModel(
      darkMode: darkMode == freezed
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThemeModel implements _ThemeModel {
  _$_ThemeModel({this.darkMode = false});

  factory _$_ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ThemeModelFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool darkMode;

  @override
  String toString() {
    return 'ThemeModel(darkMode: $darkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeModel &&
            (identical(other.darkMode, darkMode) ||
                const DeepCollectionEquality()
                    .equals(other.darkMode, darkMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(darkMode);

  @JsonKey(ignore: true)
  @override
  _$ThemeModelCopyWith<_ThemeModel> get copyWith =>
      __$ThemeModelCopyWithImpl<_ThemeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThemeModelToJson(this);
  }
}

abstract class _ThemeModel implements ThemeModel {
  factory _ThemeModel({bool darkMode}) = _$_ThemeModel;

  factory _ThemeModel.fromJson(Map<String, dynamic> json) =
      _$_ThemeModel.fromJson;

  @override
  bool get darkMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeModelCopyWith<_ThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
