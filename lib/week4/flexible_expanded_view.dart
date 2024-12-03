import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Flexible Expanded View '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 112, 120, 127),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 97, 44, 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
