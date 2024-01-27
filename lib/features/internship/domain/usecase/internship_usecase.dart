import 'package:internshala/core/resources/data_state.dart';
import 'package:internshala/features/internship/domain/entities/internship_response_entity.dart';
import 'package:internshala/features/internship/domain/repositories/internship_repository.dart';

class SearchInternshipUseCase {
  final InternshipRepository repository;

  SearchInternshipUseCase(this.repository);

  Future<DataState<InternshipResponse>> call() {
    return repository.searchInternship();
  }
}
