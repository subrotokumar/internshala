import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Shimmer extends StatelessWidget {
  const Shimmer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Animate(
      child: child,
      onComplete: (controller) => controller.repeat(),
    ).shimmer(
      duration: 2.seconds,
      colors: [
        Colors.blueGrey.shade50,
        Colors.white,
        Colors.blueGrey.shade50,
      ],
    );
  }
}
