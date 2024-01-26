// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../application_status_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationStatusMessageModelImpl
    _$$ApplicationStatusMessageModelImplFromJson(Map<String, dynamic> json) =>
        _$ApplicationStatusMessageModelImpl(
          toShow: json['to_show'] as bool,
          message: json['message'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$$ApplicationStatusMessageModelImplToJson(
        _$ApplicationStatusMessageModelImpl instance) =>
    <String, dynamic>{
      'to_show': instance.toShow,
      'message': instance.message,
      'type': instance.type,
    };
