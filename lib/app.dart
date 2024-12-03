import 'package:flutter/material.dart';
import 'package:new_project/week4/classwork_view.dart';
import 'package:new_project/week4/flexible_expanded_view.dart';
import 'package:new_project/week4/load_image_view.dart';
import 'package:new_project/week4/media_query.dart';
import 'package:new_project/week4/snack_bar_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "new project",
      home: ClassworkView(),
    );
  }
}
