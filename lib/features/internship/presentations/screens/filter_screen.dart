import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class InternshipFilterScreen extends StatefulWidget {
  const InternshipFilterScreen({super.key});

  @override
  State<InternshipFilterScreen> createState() => _InternshipFilterScreenState();
}

class _InternshipFilterScreenState extends State<InternshipFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(PhosphorIcons.arrowLeft()),
      ),
    );
  }
}
