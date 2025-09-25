// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetThemeParams {
  ThemeModeType get themeMode => throw _privateConstructorUsedError;

  /// Create a copy of SetThemeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetThemeParamsCopyWith<SetThemeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetThemeParamsCopyWith<$Res> {
  factory $SetThemeParamsCopyWith(
          SetThemeParams value, $Res Function(SetThemeParams) then) =
      _$SetThemeParamsCopyWithImpl<$Res, SetThemeParams>;
  @useResult
  $Res call({ThemeModeType themeMode});
}

/// @nodoc
class _$SetThemeParamsCopyWithImpl<$Res, $Val extends SetThemeParams>
    implements $SetThemeParamsCopyWith<$Res> {
  _$SetThemeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetThemeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeModeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetThemeParamsImplCopyWith<$Res>
    implements $SetThemeParamsCopyWith<$Res> {
  factory _$$SetThemeParamsImplCopyWith(_$SetThemeParamsImpl value,
          $Res Function(_$SetThemeParamsImpl) then) =
      __$$SetThemeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeModeType themeMode});
}

/// @nodoc
class __$$SetThemeParamsImplCopyWithImpl<$Res>
    extends _$SetThemeParamsCopyWithImpl<$Res, _$SetThemeParamsImpl>
    implements _$$SetThemeParamsImplCopyWith<$Res> {
  __$$SetThemeParamsImplCopyWithImpl(
      _$SetThemeParamsImpl _value, $Res Function(_$SetThemeParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetThemeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$SetThemeParamsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeModeType,
    ));
  }
}

/// @nodoc

class _$SetThemeParamsImpl implements _SetThemeParams {
  const _$SetThemeParamsImpl({required this.themeMode});

  @override
  final ThemeModeType themeMode;

  @override
  String toString() {
    return 'SetThemeParams(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetThemeParamsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of SetThemeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetThemeParamsImplCopyWith<_$SetThemeParamsImpl> get copyWith =>
      __$$SetThemeParamsImplCopyWithImpl<_$SetThemeParamsImpl>(
          this, _$identity);
}

abstract class _SetThemeParams implements SetThemeParams {
  const factory _SetThemeParams({required final ThemeModeType themeMode}) =
      _$SetThemeParamsImpl;

  @override
  ThemeModeType get themeMode;

  /// Create a copy of SetThemeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetThemeParamsImplCopyWith<_$SetThemeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
