import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internshala/config/theme/app_color.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class InternshipFilterScreen extends StatefulWidget {
  const InternshipFilterScreen({super.key});

  @override
  State<InternshipFilterScreen> createState() => _InternshipFilterScreenState();
}

class _InternshipFilterScreenState extends State<InternshipFilterScreen> {
  bool workFromHome = false;
  bool partTime = false;
  Set<String> set = {};
  final titleStyle = TextStyle(
    color: Colors.grey.shade600,
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Icon(PhosphorIcons.arrowLeft()),
        ),
        title: const Text(
          'Filters',
          style: TextStyle(
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
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(20).copyWith(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PROFILE',
              style: titleStyle,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                foregroundColor: AppColor.primary,
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add profile'),
            ),
            const SizedBox(height: 10),
            Text('CITY', style: titleStyle),
            TextButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                foregroundColor: AppColor.primary,
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add city'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('INTERSHIP TYPE', style: titleStyle),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColor.primary,
                  visualDensity: const VisualDensity(
                    vertical: -4,
                    horizontal: -4,
                  ),
                  value: workFromHome,
                  onChanged: (value) => setState(() {
                    workFromHome = value ?? workFromHome;
                  }),
                ),
                const Text('Work from home')
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColor.primary,
                  visualDensity: const VisualDensity(
                    vertical: -4,
                    horizontal: -4,
                  ),
                  value: partTime,
                  onChanged: (value) => setState(() {
                    partTime = value ?? partTime;
                  }),
                ),
                const Text('Part-time')
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10).copyWith(top: 20),
              child: Text('MONTLY STIPEND (INR)', style: titleStyle),
            ),
            Wrap(
              children: ['2,000', '4,000', '6,000', '8,000', '10,000'].map((e) {
                final selected = set.contains(e);
                return GestureDetector(
                  onTap: () => setState(() {
                    selected ? set.remove(e) : set.add(e);
                  }),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected ? AppColor.primary : Colors.white,
                      border: Border.all(
                        color: !selected ? AppColor.primary : Colors.white,
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      '₹ $e',
                      style: TextStyle(
                          color: !selected ? AppColor.primary : Colors.white),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width * .45, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: AppColor.primary),
                ),
                backgroundColor: Colors.white,
                foregroundColor: AppColor.primary,
              ),
              onPressed: () {},
              child: const Text('Clean all'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width * .45, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: AppColor.primary),
                ),
                foregroundColor: Colors.white,
                backgroundColor: AppColor.primary,
              ),
              onPressed: () {},
              child: const Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}
