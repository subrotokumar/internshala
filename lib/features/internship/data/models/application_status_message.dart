// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:internshala/features/internship/domain/entities/application_status_message.dart';

part 'gen/application_status_message.freezed.dart';
part 'gen/application_status_message.g.dart';

@freezed
class ApplicationStatusMessageModel extends ApplicationStatusMessage
    with _$ApplicationStatusMessageModel {
  const factory ApplicationStatusMessageModel({
    @JsonKey(name: "to_show") required bool toShow,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "type") required String type,
  }) = _ApplicationStatusMessageModel;

  factory ApplicationStatusMessageModel.fromJson(Map<String, Object?> json) =>
      _$ApplicationStatusMessageModelFromJson(json);
}
