import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:internshala/config/theme/app_color.dart';
import 'package:internshala/features/internship/domain/entities/internship_metadata.dart';

class InternshipTile extends StatelessWidget {
  final InternshipsMeta data;
  const InternshipTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12).copyWith(bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  PhosphorIcons.trendUp(PhosphorIconsStyle.bold),
                  size: 15,
                  color: Colors.blue,
                ),
                const SizedBox(width: 4),
                const Text('Activity hiring'),
              ],
            ),
          ),
          _MainTile(data: data), //* Company and Position
          _Location(data: data), //* Location
          _Duration(data: data), //* Duration
          _Stipend(data: data), //* Stipend
          _WorkType(data: data), //* Work Type
          _PostedBy(data: data), //* Posted by
          Divider(color: Colors.grey.shade300),
          // Apply Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'View details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary,
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: AppColor.primary,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
                child: const Text('Apply now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MainTile extends StatelessWidget {
  const _MainTile({required this.data});

  final InternshipsMeta data;

  String get logo {
    final name = data.companyName;
    if (name.contains('Google')) {
      return 'https://1000logos.net/wp-content/uploads/2016/11/Google-Symbol.png';
    } else {
      return data.companyLogo;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(data.profileName),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 20,
      ),
      subtitle: Text(data.companyName),
      trailing: CachedNetworkImage(
        imageUrl: logo,
        height: 35,
        width: 35,
        fit: BoxFit.cover,
        errorWidget: (c, _, __) => Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade100,
          ),
          child: Icon(PhosphorIcons.buildings()),
        ),
      ),
    );
  }
}

class _Location extends StatelessWidget {
  const _Location({required this.data});

  final InternshipsMeta data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          Icon(
            data.workFromHome ? PhosphorIcons.house() : PhosphorIcons.mapPin(),
            size: 16,
          ),
          const SizedBox(width: 5),
          Text(
            data.workFromHome ? 'Work from Home' : data.locationNames.first,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class _Duration extends StatelessWidget {
  const _Duration({required this.data});

  final InternshipsMeta data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7, bottom: 7),
      child: Row(
        children: [
          Icon(PhosphorIcons.playCircle(), size: 16),
          const SizedBox(width: 5),
          Text(
            data.startDate,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(width: 25),
          Icon(PhosphorIcons.calendar(), size: 16),
          const SizedBox(width: 5),
          Text(
            data.duration,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class _Stipend extends StatelessWidget {
  const _Stipend({required this.data});

  final InternshipsMeta data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7, bottom: 7),
      child: Row(
        children: [
          Icon(PhosphorIcons.money(), size: 16),
          const SizedBox(width: 5),
          Text(
            data.stipend.salary,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class _WorkType extends StatelessWidget {
  const _WorkType({required this.data});

  final InternshipsMeta data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        '${data.labelsApp} ${data.ppoLabelValue.toLowerCase()}',
        style: TextStyle(color: Colors.grey.shade900),
      ),
    );
  }
}

class _PostedBy extends StatelessWidget {
  const _PostedBy({required this.data});

  final InternshipsMeta data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: data.postedByLabel.contains('days')
            ? AppColor.primary.withOpacity(0.1)
            : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            PhosphorIcons.clockClockwise(PhosphorIconsStyle.bold),
            color: data.postedByLabel.contains('days')
                ? AppColor.primary
                : Colors.black.withOpacity(0.7),
            size: 16,
          ),
          const SizedBox(width: 5),
          Text(
            data.postedByLabel,
            style: TextStyle(
              color: data.postedByLabel.contains('days')
                  ? AppColor.primary
                  : Colors.black.withOpacity(0.7),
            ),
          )
        ],
      ),
    );
  }
}
