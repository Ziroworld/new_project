import 'package:flutter/material.dart';

class AddNoView extends StatelessWidget {
  const AddNoView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "my application",
      home: Scaffold(
        // body: Text("hello world"),
        appBar: AppBar(
          title: const Text('First App'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("this is body"),
        ),
      ),
    );
  }
}
