import 'package:internshala/core/resources/data_state.dart';
import 'package:internshala/features/internship/domain/entities/internship_response_entity.dart';

abstract class InternshipRepository {
  Future<DataState<InternshipResponse>> searchInternship();
}
