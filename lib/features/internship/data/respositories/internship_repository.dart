import 'package:internshala/core/resources/base_api_mixim.dart';
import 'package:internshala/core/resources/data_state.dart';
import 'package:internshala/features/internship/data/source/remote/api_client.dart';
import 'package:internshala/features/internship/domain/entities/internship_response.dart';
import 'package:internshala/features/internship/domain/repositories/internship_repository.dart';

class InternshipRepositoryImpl extends InternshipRepository
    with BaseApiRepository {
  final ApiClient client;
  InternshipRepositoryImpl(this.client);

  @override
  Future<DataState<InternshipResponse>> searchInternship() {
    return getStateOf<InternshipResponse>(
      request: () => client.searchIntership(),
    );
  }
}
