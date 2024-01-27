import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:internshala/config/logger/logger.dart';
import 'package:internshala/features/internship/presentations/providers/internship_provider.dart';
import 'package:internshala/features/internship/presentations/widgets/filter_section.dart';
import 'package:internshala/features/internship/presentations/widgets/intership_tile.dart';
import 'package:internshala/features/internship/presentations/widgets/loading_internship.dart';

class InternshipScreen extends ConsumerStatefulWidget {
  const InternshipScreen({super.key});

  @override
  ConsumerState<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends ConsumerState<InternshipScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.invalidate(searchInternshipProvider);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: FilterSection(),
      ),
      body: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(),
        child: Consumer(
          builder: (context, ref, child) {
            final searchedInternship = ref.watch(searchInternshipProvider);
            return searchedInternship.when(
              error: (error, stackTrace) {
                logger.e(error);
                logger.f(stackTrace);
                return const Center(child: Text('404'));
              },
              loading: () => const LoadingInternships(),
              data: (data) {
                if (data.isEmpty) {
                  return const Center(child: Text('404'));
                } else {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final internship = data.elementAt(index);
                      return InternshipTile(data: internship);
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: 10,
                        color: Colors.grey.shade100,
                      );
                    },
                    itemCount: data.length,
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
