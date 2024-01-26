// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:internshala/features/internship/domain/entities/Stipend.dart';

part 'gen/stipend.freezed.dart';
part 'gen/stipend.g.dart';

@freezed
class StipendModel extends Stipend with _$StipendModel {
  const factory StipendModel({
    @JsonKey(name: "salary") required String salary,
    @JsonKey(name: "tooltip") required dynamic tooltip,
    @JsonKey(name: "salaryValue1") required int salaryValue1,
    @JsonKey(name: "salaryValue2") required dynamic salaryValue2,
    @JsonKey(name: "salaryType") required String salaryType,
    @JsonKey(name: "currency") required String currency,
    @JsonKey(name: "scale") required String scale,
    @JsonKey(name: "large_stipend_text") required bool largeStipendText,
  }) = _StipendModel;

  factory StipendModel.fromJson(Map<String, Object?> json) =>
      _$StipendModelFromJson(json);
}
