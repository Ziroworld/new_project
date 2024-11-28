import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column View"),
        backgroundColor: const Color.fromARGB(255, 113, 108, 89),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 55, 77, 115),
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.star,
                size: 100,
              ),
              Icon(
                Icons.star,
                size: 100,
              ),
              Spacer(),
              Icon(
                Icons.star,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
