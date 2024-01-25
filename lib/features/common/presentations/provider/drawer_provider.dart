import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainDrawerProvider =
    NotifierProvider<MainDrawerNotifier, BuildContext?>(MainDrawerNotifier.new);

class MainDrawerNotifier extends Notifier<BuildContext?> {
  @override
  BuildContext? build() => null;

  setState(BuildContext context) {
    state = context;
  }

  openDrawer() {
    if (state != null) Scaffold.of(state!).openDrawer();
  }
}
