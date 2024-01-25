import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final navIndexProvider = StateProvider<int>((ref) => 0);

class MainNavigationBar extends ConsumerWidget {
  const MainNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navIndexProvider);
    return BottomNavigationBar(
      currentIndex: index,
      enableFeedback: false,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.blue.shade700,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      elevation: 10,
      onTap: (v) {
        ref.read(navIndexProvider.notifier).state = v;
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(PhosphorIconsThin.house),
          activeIcon: Icon(PhosphorIconsFill.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIconsThin.paperPlaneTilt),
          activeIcon: Icon(PhosphorIconsFill.paperPlaneTilt),
          label: 'Internships',
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIconsThin.suitcaseSimple),
          activeIcon: Icon(PhosphorIconsFill.suitcaseSimple),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIconsThin.users),
          activeIcon: Icon(PhosphorIconsFill.users),
          label: 'Clubs',
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIconsThin.monitorPlay),
          activeIcon: Icon(PhosphorIconsFill.monitorPlay),
          label: 'Courses',
        )
      ],
    );
  }
}
