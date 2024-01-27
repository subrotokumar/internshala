import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/config/router/router.dart';
import 'package:internshala/features/internship/presentations/providers/internship_provider.dart';
import 'package:internshala/features/internship/presentations/widgets/filter_loading.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class FilterSection extends ConsumerWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(searchInternshipProvider);
    return data.when(
      loading: () => const FilterLoading(),
      error: (error, stackTrace) => const Text('404'),
      data: (data) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade300, width: 2),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue),
              ),
              margin: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  InternshipFilterScreenRouter().push(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      PhosphorIcons.funnel(PhosphorIconsStyle.bold),
                      size: 15,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      'Filter',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            Text('${data.length} total internships'),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
