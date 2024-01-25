import 'package:flutter/material.dart';

class InternshipScreen extends StatelessWidget {
  const InternshipScreen({super.key});

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
                  onTap: () {
                    print('gg');
                  },
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
    );
  }
}
