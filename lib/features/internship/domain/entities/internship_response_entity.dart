import 'package:internshala/features/internship/domain/entities/internship_metadata_entity.dart';

class InternshipResponse {
  final Map<String, InternshipsMeta> internshipsMeta;
  final List<int> internshipIds;

  InternshipResponse({
    required this.internshipsMeta,
    required this.internshipIds,
  });
}
