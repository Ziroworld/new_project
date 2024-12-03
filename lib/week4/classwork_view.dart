import 'package:flutter/material.dart';

class ClassworkView extends StatelessWidget {
  const ClassworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Rows and columns'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 192, 197, 206),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    width: 300,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text('container 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 94, 63, 61),
                    width: 300,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text('container 2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    width: 300,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text('container 3'),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 161, 199, 190),
                width: double.infinity,
                height: 80,
                alignment: Alignment.center,
                child: const Text('container 4'),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 173, 145, 143),
                width: double.infinity,
                height: 80,
                alignment: Alignment.center,
                child: const Text('container 5'),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 160, 203, 200),
                width: double.infinity,
                height: 80,
                alignment: Alignment.center,
                child: const Text('container 6'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
