// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabelModelImpl _$$LabelModelImplFromJson(Map<String, dynamic> json) =>
    _$LabelModelImpl(
      labelValue: (json['label_value'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      labelMobile: (json['label_mobile'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      labelApp:
          (json['label_app'] as List<dynamic>).map((e) => e as String).toList(),
      labelsAppInCard: (json['labels_app_in_card'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LabelModelImplToJson(_$LabelModelImpl instance) =>
    <String, dynamic>{
      'label_value': instance.labelValue,
      'label_mobile': instance.labelMobile,
      'label_app': instance.labelApp,
      'labels_app_in_card': instance.labelsAppInCard,
    };
