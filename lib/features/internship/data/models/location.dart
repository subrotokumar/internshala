// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:internshala/features/internship/domain/entities/location.dart';

part 'gen/location.freezed.dart';
part 'gen/location.g.dart';

@freezed
class LocationModel extends Location with _$LocationModel {
  const factory LocationModel({
    @JsonKey(name: "string") required String string,
    @JsonKey(name: "link") required String link,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "region") required String? region,
    @JsonKey(name: "locationName") required String locationName,
  }) = _Location;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}
