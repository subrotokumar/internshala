// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LabelModel _$LabelModelFromJson(Map<String, dynamic> json) {
  return _LabelModel.fromJson(json);
}

/// @nodoc
mixin _$LabelModel {
  @JsonKey(name: "label_value")
  List<String> get labelValue => throw _privateConstructorUsedError;
  @JsonKey(name: "label_mobile")
  List<String> get labelMobile => throw _privateConstructorUsedError;
  @JsonKey(name: "label_app")
  List<String> get labelApp => throw _privateConstructorUsedError;
  @JsonKey(name: "labels_app_in_card")
  List<String> get labelsAppInCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelModelCopyWith<LabelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelModelCopyWith<$Res> {
  factory $LabelModelCopyWith(
          LabelModel value, $Res Function(LabelModel) then) =
      _$LabelModelCopyWithImpl<$Res, LabelModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "label_value") List<String> labelValue,
      @JsonKey(name: "label_mobile") List<String> labelMobile,
      @JsonKey(name: "label_app") List<String> labelApp,
      @JsonKey(name: "labels_app_in_card") List<String> labelsAppInCard});
}

/// @nodoc
class _$LabelModelCopyWithImpl<$Res, $Val extends LabelModel>
    implements $LabelModelCopyWith<$Res> {
  _$LabelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelValue = null,
    Object? labelMobile = null,
    Object? labelApp = null,
    Object? labelsAppInCard = null,
  }) {
    return _then(_value.copyWith(
      labelValue: null == labelValue
          ? _value.labelValue
          : labelValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labelMobile: null == labelMobile
          ? _value.labelMobile
          : labelMobile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labelApp: null == labelApp
          ? _value.labelApp
          : labelApp // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labelsAppInCard: null == labelsAppInCard
          ? _value.labelsAppInCard
          : labelsAppInCard // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelModelImplCopyWith<$Res>
    implements $LabelModelCopyWith<$Res> {
  factory _$$LabelModelImplCopyWith(
          _$LabelModelImpl value, $Res Function(_$LabelModelImpl) then) =
      __$$LabelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "label_value") List<String> labelValue,
      @JsonKey(name: "label_mobile") List<String> labelMobile,
      @JsonKey(name: "label_app") List<String> labelApp,
      @JsonKey(name: "labels_app_in_card") List<String> labelsAppInCard});
}

/// @nodoc
class __$$LabelModelImplCopyWithImpl<$Res>
    extends _$LabelModelCopyWithImpl<$Res, _$LabelModelImpl>
    implements _$$LabelModelImplCopyWith<$Res> {
  __$$LabelModelImplCopyWithImpl(
      _$LabelModelImpl _value, $Res Function(_$LabelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelValue = null,
    Object? labelMobile = null,
    Object? labelApp = null,
    Object? labelsAppInCard = null,
  }) {
    return _then(_$LabelModelImpl(
      labelValue: null == labelValue
          ? _value._labelValue
          : labelValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labelMobile: null == labelMobile
          ? _value._labelMobile
          : labelMobile // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labelApp: null == labelApp
          ? _value._labelApp
          : labelApp // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labelsAppInCard: null == labelsAppInCard
          ? _value._labelsAppInCard
          : labelsAppInCard // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelModelImpl implements _LabelModel {
  const _$LabelModelImpl(
      {@JsonKey(name: "label_value") required final List<String> labelValue,
      @JsonKey(name: "label_mobile") required final List<String> labelMobile,
      @JsonKey(name: "label_app") required final List<String> labelApp,
      @JsonKey(name: "labels_app_in_card")
      required final List<String> labelsAppInCard})
      : _labelValue = labelValue,
        _labelMobile = labelMobile,
        _labelApp = labelApp,
        _labelsAppInCard = labelsAppInCard;

  factory _$LabelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelModelImplFromJson(json);

  final List<String> _labelValue;
  @override
  @JsonKey(name: "label_value")
  List<String> get labelValue {
    if (_labelValue is EqualUnmodifiableListView) return _labelValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labelValue);
  }

  final List<String> _labelMobile;
  @override
  @JsonKey(name: "label_mobile")
  List<String> get labelMobile {
    if (_labelMobile is EqualUnmodifiableListView) return _labelMobile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labelMobile);
  }

  final List<String> _labelApp;
  @override
  @JsonKey(name: "label_app")
  List<String> get labelApp {
    if (_labelApp is EqualUnmodifiableListView) return _labelApp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labelApp);
  }

  final List<String> _labelsAppInCard;
  @override
  @JsonKey(name: "labels_app_in_card")
  List<String> get labelsAppInCard {
    if (_labelsAppInCard is EqualUnmodifiableListView) return _labelsAppInCard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labelsAppInCard);
  }

  @override
  String toString() {
    return 'LabelModel(labelValue: $labelValue, labelMobile: $labelMobile, labelApp: $labelApp, labelsAppInCard: $labelsAppInCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelModelImpl &&
            const DeepCollectionEquality()
                .equals(other._labelValue, _labelValue) &&
            const DeepCollectionEquality()
                .equals(other._labelMobile, _labelMobile) &&
            const DeepCollectionEquality().equals(other._labelApp, _labelApp) &&
            const DeepCollectionEquality()
                .equals(other._labelsAppInCard, _labelsAppInCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_labelValue),
      const DeepCollectionEquality().hash(_labelMobile),
      const DeepCollectionEquality().hash(_labelApp),
      const DeepCollectionEquality().hash(_labelsAppInCard));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelModelImplCopyWith<_$LabelModelImpl> get copyWith =>
      __$$LabelModelImplCopyWithImpl<_$LabelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelModelImplToJson(
      this,
    );
  }
}

abstract class _LabelModel implements LabelModel {
  const factory _LabelModel(
      {@JsonKey(name: "label_value") required final List<String> labelValue,
      @JsonKey(name: "label_mobile") required final List<String> labelMobile,
      @JsonKey(name: "label_app") required final List<String> labelApp,
      @JsonKey(name: "labels_app_in_card")
      required final List<String> labelsAppInCard}) = _$LabelModelImpl;

  factory _LabelModel.fromJson(Map<String, dynamic> json) =
      _$LabelModelImpl.fromJson;

  @override
  @JsonKey(name: "label_value")
  List<String> get labelValue;
  @override
  @JsonKey(name: "label_mobile")
  List<String> get labelMobile;
  @override
  @JsonKey(name: "label_app")
  List<String> get labelApp;
  @override
  @JsonKey(name: "labels_app_in_card")
  List<String> get labelsAppInCard;
  @override
  @JsonKey(ignore: true)
  _$$LabelModelImplCopyWith<_$LabelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
