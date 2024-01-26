import 'dart:io' show HttpStatus;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:internshala/config/logger/logger.dart';
import 'package:internshala/core/resources/data_state.dart';
import 'package:retrofit/retrofit.dart';

mixin BaseApiRepository {
  @protected
  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      final status = httpResponse.response.statusCode ?? 400;
      logger.d(status);
      logger.d(httpResponse.data);
      if (status < HttpStatus.badRequest) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (error) {
      logger.f(error.stackTrace);
      return DataFailed(error);
    }
  }
}
