// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../internship_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternshipResponseModelImpl _$$InternshipResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InternshipResponseModelImpl(
      internshipsMeta: (json['internships_meta'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, InternshipsMetaModel.fromJson(e as Map<String, dynamic>)),
      ),
      internshipIds: (json['internship_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$InternshipResponseModelImplToJson(
        _$InternshipResponseModelImpl instance) =>
    <String, dynamic>{
      'internships_meta': instance.internshipsMeta,
      'internship_ids': instance.internshipIds,
    };
