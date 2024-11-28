import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column View"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.star,
              size: 30,
            ),
            Icon(
              Icons.star,
              size: 30,
            ),
            Icon(
              Icons.star,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
