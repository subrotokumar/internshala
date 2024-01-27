import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:internshala/features/common/presentations/screens/main_screen.dart';
import 'package:internshala/features/common/presentations/screens/splash_screen.dart';
import 'package:internshala/features/internship/presentations/screens/filter_screen.dart';
part 'gen/router.g.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: SplashScreenRoute().location,
    routes: $appRoutes,
  ),
);

@TypedGoRoute<SplashScreenRoute>(path: '/splash')
class SplashScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const SplashScreen();
}

@TypedGoRoute<HomeScreenRoute>(path: '/')
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(context, state) => const MainScreen();
}

@TypedGoRoute<InternshipFilterScreenRouter>(path: '/internships/filter')
class InternshipFilterScreenRouter extends GoRouteData {
  @override
  Widget build(context, state) => const InternshipFilterScreen();
}
