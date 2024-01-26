import 'package:dio/dio.dart';
import 'package:internshala/features/internship/data/models/internship_response.dart';
import 'package:retrofit/retrofit.dart';

part 'gen/api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/flutter_hiring/search')
  Future<HttpResponse<InternshipResponseModel>> searchIntership();
}
