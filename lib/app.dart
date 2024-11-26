import 'package:flutter/material.dart';
import 'package:new_project/view/add_no._view.dart';
import 'package:new_project/view/arithemetic_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "new project",
      home: ArithemeticView(),
    );
  }
}
