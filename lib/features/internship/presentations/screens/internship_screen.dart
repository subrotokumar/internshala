import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/config/logger/logger.dart';
import 'package:internshala/features/internship/presentations/providers/internship_provider.dart';

class InternshipScreen extends ConsumerStatefulWidget {
  const InternshipScreen({super.key});

  @override
  ConsumerState<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends ConsumerState<InternshipScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 1),
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blue),
                ),
                margin: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      'Filter',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              const Text('3243 total internships'),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      body: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(),
        child: Consumer(
          builder: (context, ref, child) {
            return ref.watch(searchInternshipProvider).when(
              error: (error, stackTrace) {
                logger.e(error);
                logger.f(stackTrace);
                return const Center(child: Text('404'));
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              data: (data) {
                if (data.isEmpty) {
                  return const Center(
                    child: Text('404'),
                  );
                } else {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final internship = data.elementAt(index);
                      return ListTile(
                        title: Text(internship.companyName),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
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
