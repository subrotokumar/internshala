// ignore_for_file: depend_on_referenced_packages

import 'package:envied/envied.dart';

part 'gen/env.g.dart';

@Envied(path: '.env.dev')
abstract class Env {
  @EnviedField(varName: 'API_URL')
  static const String apiUrl = _Env.apiUrl;
}
