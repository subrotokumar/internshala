// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internshala/features/internship/data/models/internship_metadata.dart';
import 'package:internshala/features/internship/domain/entities/internship_response.dart';
part 'gen/internship_response.freezed.dart';
part 'gen/internship_response.g.dart';

@freezed
class InternshipResponseModel extends InternshipResponse
    with _$InternshipResponseModel {
  const factory InternshipResponseModel({
    @JsonKey(name: "internships_meta")
    required Map<String, InternshipsMetaModel> internshipsMeta,
    @JsonKey(name: "internship_ids") required List<int> internshipIds,
  }) = _InternshipResponseModel;

  factory InternshipResponseModel.fromJson(Map<String, Object?> json) =>
      _$InternshipResponseModelFromJson(json);
}
