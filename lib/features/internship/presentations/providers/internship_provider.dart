import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:internshala/core/resources/data_state.dart';
import 'package:internshala/features/common/presentations/provider/dio_provider.dart';
import 'package:internshala/features/internship/data/respositories/internship_repository.dart';
import 'package:internshala/features/internship/data/source/remote/api_client.dart';
import 'package:internshala/features/internship/domain/entities/internship_metadata_entity.dart';
import 'package:internshala/features/internship/domain/repositories/internship_repository.dart';
import 'package:internshala/features/internship/domain/usecase/internship_usecase.dart';

part 'gen/internship_provider.g.dart';

@Riverpod(keepAlive: true)
InternshipRepository internshipRepository(InternshipRepositoryRef ref) {
  final dio = ref.watch(DioProvider(useIsolate: true));
  final client = ApiClient(dio);
  return InternshipRepositoryImpl(client);
}

@Riverpod(keepAlive: true)
SearchInternshipUseCase searchInternshipUseCase(
    SearchInternshipUseCaseRef ref) {
  final repository = ref.watch(internshipRepositoryProvider);
  return SearchInternshipUseCase(repository);
}

@Riverpod(keepAlive: true)
Future<List<InternshipsMeta>> searchInternship(
  SearchInternshipRef ref,
) async {
  final res = await ref.read(searchInternshipUseCaseProvider).call();
  if (res is DataSuccess && res.data != null) {
    List<InternshipsMeta> result = [];
    res.data!.internshipsMeta.forEach((key, value) {
      result.add(value);
    });
    return result;
  } else {
    return [];
  }
}
