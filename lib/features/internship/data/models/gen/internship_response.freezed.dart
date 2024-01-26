// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../internship_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InternshipResponseModel _$InternshipResponseModelFromJson(
    Map<String, dynamic> json) {
  return _InternshipResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InternshipResponseModel {
  @JsonKey(name: "internships_meta")
  Map<String, InternshipsMetaModel> get internshipsMeta =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "internship_ids")
  List<int> get internshipIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InternshipResponseModelCopyWith<InternshipResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternshipResponseModelCopyWith<$Res> {
  factory $InternshipResponseModelCopyWith(InternshipResponseModel value,
          $Res Function(InternshipResponseModel) then) =
      _$InternshipResponseModelCopyWithImpl<$Res, InternshipResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "internships_meta")
      Map<String, InternshipsMetaModel> internshipsMeta,
      @JsonKey(name: "internship_ids") List<int> internshipIds});
}

/// @nodoc
class _$InternshipResponseModelCopyWithImpl<$Res,
        $Val extends InternshipResponseModel>
    implements $InternshipResponseModelCopyWith<$Res> {
  _$InternshipResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internshipsMeta = null,
    Object? internshipIds = null,
  }) {
    return _then(_value.copyWith(
      internshipsMeta: null == internshipsMeta
          ? _value.internshipsMeta
          : internshipsMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, InternshipsMetaModel>,
      internshipIds: null == internshipIds
          ? _value.internshipIds
          : internshipIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternshipResponseModelImplCopyWith<$Res>
    implements $InternshipResponseModelCopyWith<$Res> {
  factory _$$InternshipResponseModelImplCopyWith(
          _$InternshipResponseModelImpl value,
          $Res Function(_$InternshipResponseModelImpl) then) =
      __$$InternshipResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "internships_meta")
      Map<String, InternshipsMetaModel> internshipsMeta,
      @JsonKey(name: "internship_ids") List<int> internshipIds});
}

/// @nodoc
class __$$InternshipResponseModelImplCopyWithImpl<$Res>
    extends _$InternshipResponseModelCopyWithImpl<$Res,
        _$InternshipResponseModelImpl>
    implements _$$InternshipResponseModelImplCopyWith<$Res> {
  __$$InternshipResponseModelImplCopyWithImpl(
      _$InternshipResponseModelImpl _value,
      $Res Function(_$InternshipResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internshipsMeta = null,
    Object? internshipIds = null,
  }) {
    return _then(_$InternshipResponseModelImpl(
      internshipsMeta: null == internshipsMeta
          ? _value._internshipsMeta
          : internshipsMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, InternshipsMetaModel>,
      internshipIds: null == internshipIds
          ? _value._internshipIds
          : internshipIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternshipResponseModelImpl implements _InternshipResponseModel {
  const _$InternshipResponseModelImpl(
      {@JsonKey(name: "internships_meta")
      required final Map<String, InternshipsMetaModel> internshipsMeta,
      @JsonKey(name: "internship_ids") required final List<int> internshipIds})
      : _internshipsMeta = internshipsMeta,
        _internshipIds = internshipIds;

  factory _$InternshipResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternshipResponseModelImplFromJson(json);

  final Map<String, InternshipsMetaModel> _internshipsMeta;
  @override
  @JsonKey(name: "internships_meta")
  Map<String, InternshipsMetaModel> get internshipsMeta {
    if (_internshipsMeta is EqualUnmodifiableMapView) return _internshipsMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_internshipsMeta);
  }

  final List<int> _internshipIds;
  @override
  @JsonKey(name: "internship_ids")
  List<int> get internshipIds {
    if (_internshipIds is EqualUnmodifiableListView) return _internshipIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_internshipIds);
  }

  @override
  String toString() {
    return 'InternshipResponseModel(internshipsMeta: $internshipsMeta, internshipIds: $internshipIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternshipResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._internshipsMeta, _internshipsMeta) &&
            const DeepCollectionEquality()
                .equals(other._internshipIds, _internshipIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_internshipsMeta),
      const DeepCollectionEquality().hash(_internshipIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternshipResponseModelImplCopyWith<_$InternshipResponseModelImpl>
      get copyWith => __$$InternshipResponseModelImplCopyWithImpl<
          _$InternshipResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternshipResponseModelImplToJson(
      this,
    );
  }
}

abstract class _InternshipResponseModel implements InternshipResponseModel {
  const factory _InternshipResponseModel(
      {@JsonKey(name: "internships_meta")
      required final Map<String, InternshipsMetaModel> internshipsMeta,
      @JsonKey(name: "internship_ids")
      required final List<int> internshipIds}) = _$InternshipResponseModelImpl;

  factory _InternshipResponseModel.fromJson(Map<String, dynamic> json) =
      _$InternshipResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "internships_meta")
  Map<String, InternshipsMetaModel> get internshipsMeta;
  @override
  @JsonKey(name: "internship_ids")
  List<int> get internshipIds;
  @override
  @JsonKey(ignore: true)
  _$$InternshipResponseModelImplCopyWith<_$InternshipResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
