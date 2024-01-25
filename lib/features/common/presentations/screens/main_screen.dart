import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/features/common/presentations/provider/drawer_provider.dart';
import 'package:internshala/features/common/presentations/widgets/main_app_bar.dart';
import 'package:internshala/features/common/presentations/widgets/main_drawer.dart';
import 'package:internshala/features/common/presentations/widgets/main_navigation_bar.dart';
import 'package:internshala/features/home/presentations/screens/home_screens.dart';
import 'package:internshala/features/internship/presentations/screens/internship_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(mainDrawerProvider.notifier).setState(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        shape: BeveledRectangleBorder(),
        child: MainDrawer(),
      ),
      bottomNavigationBar: const MainNavigationBar(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MainAppBar(),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final navIndex = ref.watch(navIndexProvider);
            return const [
              HomeScreen(),
              InternshipScreen(),
              Text('Jobs'),
              Text('Clubs'),
              Text('Courses'),
            ].elementAt(navIndex);
          },
        ),
      ),
    );
  }
}
