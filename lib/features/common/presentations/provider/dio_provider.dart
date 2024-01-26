import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:internshala/core/constants/env.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gen/dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref, {bool useIsolate = false}) {
  final dio = Dio()
    ..options.baseUrl = Env.apiUrl
    ..interceptors.addAll([
      if (kDebugMode)
        PrettyDioLogger(
          responseBody: false,
          requestBody: true,
        ),
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          return handler.next(e);
        },
        onResponse: (response, handler) {
          if (response.requestOptions.method == HttpMethod.GET) {
            response.data = jsonDecode(response.data as String);
          }
          return handler.next(response);
        },
      ),
    ]);
  if (useIsolate) {
    dio.transformer = (BackgroundTransformer()..jsonDecodeCallback = parseJson);
  }
  return dio;
}

Map<String, dynamic> _parseAndDecode(String response) {
  return jsonDecode(response) as Map<String, dynamic>;
}

Future<Map<String, dynamic>> parseJson(String text) {
  return compute(_parseAndDecode, text);
}
