// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      string: json['string'] as String,
      link: json['link'] as String,
      country: json['country'] as String,
      region: json['region'] as String?,
      locationName: json['locationName'] as String,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'string': instance.string,
      'link': instance.link,
      'country': instance.country,
      'region': instance.region,
      'locationName': instance.locationName,
    };
