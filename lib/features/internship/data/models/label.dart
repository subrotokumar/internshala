// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:internshala/features/internship/domain/entities/label.dart';

part 'gen/label.freezed.dart';
part 'gen/label.g.dart';

@freezed
class LabelModel extends Label with _$LabelModel {
  const factory LabelModel({
    @JsonKey(name: "label_value") required List<String> labelValue,
    @JsonKey(name: "label_mobile") required List<String> labelMobile,
    @JsonKey(name: "label_app") required List<String> labelApp,
    @JsonKey(name: "labels_app_in_card") required List<String> labelsAppInCard,
  }) = _LabelModel;

  factory LabelModel.fromJson(Map<String, Object?> json) =>
      _$LabelModelFromJson(json);
}
