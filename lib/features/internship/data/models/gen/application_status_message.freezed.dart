// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../application_status_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationStatusMessageModel _$ApplicationStatusMessageModelFromJson(
    Map<String, dynamic> json) {
  return _ApplicationStatusMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ApplicationStatusMessageModel {
  @JsonKey(name: "to_show")
  bool get toShow => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationStatusMessageModelCopyWith<ApplicationStatusMessageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStatusMessageModelCopyWith<$Res> {
  factory $ApplicationStatusMessageModelCopyWith(
          ApplicationStatusMessageModel value,
          $Res Function(ApplicationStatusMessageModel) then) =
      _$ApplicationStatusMessageModelCopyWithImpl<$Res,
          ApplicationStatusMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "to_show") bool toShow,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class _$ApplicationStatusMessageModelCopyWithImpl<$Res,
        $Val extends ApplicationStatusMessageModel>
    implements $ApplicationStatusMessageModelCopyWith<$Res> {
  _$ApplicationStatusMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toShow = null,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      toShow: null == toShow
          ? _value.toShow
          : toShow // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicationStatusMessageModelImplCopyWith<$Res>
    implements $ApplicationStatusMessageModelCopyWith<$Res> {
  factory _$$ApplicationStatusMessageModelImplCopyWith(
          _$ApplicationStatusMessageModelImpl value,
          $Res Function(_$ApplicationStatusMessageModelImpl) then) =
      __$$ApplicationStatusMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "to_show") bool toShow,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class __$$ApplicationStatusMessageModelImplCopyWithImpl<$Res>
    extends _$ApplicationStatusMessageModelCopyWithImpl<$Res,
        _$ApplicationStatusMessageModelImpl>
    implements _$$ApplicationStatusMessageModelImplCopyWith<$Res> {
  __$$ApplicationStatusMessageModelImplCopyWithImpl(
      _$ApplicationStatusMessageModelImpl _value,
      $Res Function(_$ApplicationStatusMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toShow = null,
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$ApplicationStatusMessageModelImpl(
      toShow: null == toShow
          ? _value.toShow
          : toShow // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplicationStatusMessageModelImpl
    implements _ApplicationStatusMessageModel {
  const _$ApplicationStatusMessageModelImpl(
      {@JsonKey(name: "to_show") required this.toShow,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "type") required this.type});

  factory _$ApplicationStatusMessageModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ApplicationStatusMessageModelImplFromJson(json);

  @override
  @JsonKey(name: "to_show")
  final bool toShow;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'ApplicationStatusMessageModel(toShow: $toShow, message: $message, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStatusMessageModelImpl &&
            (identical(other.toShow, toShow) || other.toShow == toShow) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toShow, message, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStatusMessageModelImplCopyWith<
          _$ApplicationStatusMessageModelImpl>
      get copyWith => __$$ApplicationStatusMessageModelImplCopyWithImpl<
          _$ApplicationStatusMessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationStatusMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ApplicationStatusMessageModel
    implements ApplicationStatusMessageModel {
  const factory _ApplicationStatusMessageModel(
          {@JsonKey(name: "to_show") required final bool toShow,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "type") required final String type}) =
      _$ApplicationStatusMessageModelImpl;

  factory _ApplicationStatusMessageModel.fromJson(Map<String, dynamic> json) =
      _$ApplicationStatusMessageModelImpl.fromJson;

  @override
  @JsonKey(name: "to_show")
  bool get toShow;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationStatusMessageModelImplCopyWith<
          _$ApplicationStatusMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
