import 'package:flutter/material.dart';
import 'package:internshala/features/common/presentations/widgets/shimmer.dart';

class LoadingInternships extends StatelessWidget {
  const LoadingInternships({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Shimmer(
                child: Container(
                  height: 16,
                  width: width * .7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Shimmer(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 16,
                  width: width * .6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Shimmer(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 16,
                      width: width * .4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 16,
                      width: width * .1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              Shimmer(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 16,
                  width: width * .6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Shimmer(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  height: 16,
                  width: width * .3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Shimmer(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 16,
                      width: width * .3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Shimmer(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 16,
                      width: width * .2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Container(
        height: 10,
        color: Colors.grey.shade100,
      ),
      itemCount: 10,
    );
  }
}
