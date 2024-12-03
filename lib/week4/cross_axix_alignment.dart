import 'package:flutter/material.dart';

class ColumnScreenCross extends StatelessWidget {
  const ColumnScreenCross({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column Widget'),
        ),
        body: Container(
            width: double.infinity,
            color: Colors.cyan[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('button 1')),
                ElevatedButton(onPressed: () {}, child: const Text('button 2')),
                ElevatedButton(onPressed: () {}, child: const Text('button 3'))
              ],
            )));
  }
}
