// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stipend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StipendModelImpl _$$StipendModelImplFromJson(Map<String, dynamic> json) =>
    _$StipendModelImpl(
      salary: json['salary'] as String,
      tooltip: json['tooltip'],
      salaryValue1: json['salaryValue1'] as int,
      salaryValue2: json['salaryValue2'],
      salaryType: json['salaryType'] as String,
      currency: json['currency'] as String,
      scale: json['scale'] as String,
      largeStipendText: json['large_stipend_text'] as bool,
    );

Map<String, dynamic> _$$StipendModelImplToJson(_$StipendModelImpl instance) =>
    <String, dynamic>{
      'salary': instance.salary,
      'tooltip': instance.tooltip,
      'salaryValue1': instance.salaryValue1,
      'salaryValue2': instance.salaryValue2,
      'salaryType': instance.salaryType,
      'currency': instance.currency,
      'scale': instance.scale,
      'large_stipend_text': instance.largeStipendText,
    };
