import 'package:flutter/material.dart';
import 'package:new_project/common/my_snackbar_common.dart';

class SnackBarView extends StatelessWidget {
  const SnackBarView({super.key});
  @override
  Widget build(BuildContext context) {
    // _showSnackBar1() {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: const Text('Hello world'),
    //       backgroundColor: const Color.fromARGB(255, 19, 38, 94),
    //       duration: const Duration(seconds: 3),
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //       behavior: SnackBarBehavior.floating,
    //     ),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Demo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showMySnackBar(context, "hello world",
                    const Color.fromARGB(255, 134, 167, 185));
              },
              child: const Text('show 1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showMySnackBar(
                  context,
                  "ujan torinor",
                  const Color.fromARGB(255, 38, 36, 36),
                );
              },
              child: const Text('show 2'),
            ),
          ),
        ],
      ),
    );
  }
}
