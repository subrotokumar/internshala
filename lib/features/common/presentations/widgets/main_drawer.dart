import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internshala/config/theme/app_color.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10, top: 10),
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.close),
            ),
          ),
          ListTile(
            title: const Text(
              'Subroto Kumar',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Text('subrotokumar@outlook.in'),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 14),
                  Text('5'),
                  Icon(Icons.arrow_forward_ios_rounded, size: 12)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.primary,
                      child: Icon(PhosphorIcons.faders(), color: Colors.white),
                    ),
                    const SizedBox(height: 7),
                    const Text('Preferences')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.primary,
                      child: Icon(PhosphorIcons.clipboardText(),
                          color: Colors.white),
                    ),
                    const SizedBox(height: 7),
                    const Text('Resume')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.primary,
                      child: Icon(PhosphorIcons.files(), color: Colors.white),
                    ),
                    const SizedBox(height: 7),
                    const Text('Applications')
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'EXPLORE',
              style: TextStyle(),
            ),
          ),
          DrawerTile(
            label: 'Interships',
            onTap: () {},
            icon: PhosphorIcons.paperPlaneTilt(),
          ),
          DrawerTile(
            label: 'Jobs',
            onTap: () {},
            icon: PhosphorIcons.briefcase(),
          ),
          DrawerTile(
            label: 'Cources',
            onTap: () {},
            icon: PhosphorIcons.monitorPlay(),
            tag: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Text('OFFER', style: TextStyle(color: Colors.white)),
            ),
          ),
          DrawerTile(
            label: 'Placement Guarantee',
            secondLabel: 'Courses',
            onTap: () {},
            icon: PhosphorIcons.suitcase(),
          ),
          DrawerTile(
            label: 'Study Abroad',
            onTap: () {},
            icon: PhosphorIcons.globe(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              'HELP & SUPPORT',
              style: TextStyle(),
            ),
          ),
          DrawerTile(
            label: 'Help Center',
            onTap: () {},
            icon: PhosphorIcons.question(),
          ),
          DrawerTile(
            label: 'Report a Complaint',
            onTap: () {},
            icon: PhosphorIcons.chat(),
          ),
          DrawerTile(
            label: 'More',
            onTap: () {},
            icon: PhosphorIcons.plusCircle(),
          ),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final IconData icon;
  final String? secondLabel;
  final Widget? tag;
  const DrawerTile({
    super.key,
    required this.label,
    required this.onTap,
    required this.icon,
    this.secondLabel,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: secondLabel != null ? null : 40,
      child: ListTile(
        onTap: onTap,
        dense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        leading: Icon(icon, size: 20),
        title: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 10),
            if (tag != null) tag!
          ],
        ),
        subtitle: secondLabel == null
            ? null
            : Text(
                secondLabel!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
      ),
    );
  }
}
