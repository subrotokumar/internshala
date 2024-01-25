import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:internshala/features/common/presentations/widgets/main_navigation_bar.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final index = ref.watch(navIndexProvider);
        return Visibility(
          visible: index != 1,
          replacement: _AppBarWithSearch(index: index),
          child: _AppBar(index: index),
        );
      },
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        leadingWidth: 30,
        title: Text(
          switch (index) {
            0 => 'Home',
            1 => 'Internships',
            2 => 'Jobs',
            3 => 'Clubs',
            _ => 'Courses',
          },
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(PhosphorIconsRegular.bookmarkSimple),
          ),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () {},
            child: const Icon(PhosphorIconsRegular.chatCentered),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}

class _AppBarWithSearch extends StatefulWidget {
  const _AppBarWithSearch({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<_AppBarWithSearch> createState() => _AppBarWithSearchState();
}

class _AppBarWithSearchState extends State<_AppBarWithSearch> {
  TextEditingController controller = TextEditingController();
  bool search = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (search) {
      return AppBar(
        leading: GestureDetector(
          onTap: () => setState(() => search = false),
          child: Icon(PhosphorIcons.caretLeft()),
        ),
        title: const SizedBox(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.5),
              ),
              hintText: 'Category, location or company name',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AppBar(
          leadingWidth: 30,
          title: Text(
            switch (widget.index) {
              0 => 'Home',
              1 => 'Internships',
              2 => 'Jobs',
              _ => '',
            },
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() => search = true);
              },
              child: const Icon(PhosphorIconsRegular.magnifyingGlass),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {},
              child: const Icon(PhosphorIconsRegular.bookmarkSimple),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {},
              child: const Icon(PhosphorIconsRegular.chatCentered),
            ),
            const SizedBox(width: 15),
          ],
        ),
      );
    }
  }
}
