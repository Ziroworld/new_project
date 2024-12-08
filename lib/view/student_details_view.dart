import 'package:flutter/material.dart';
import 'package:new_project/model/student_model.dart';
// import 'package:new_project/view/list_view.dart';

class StudentDetailsView extends StatelessWidget {
  final Student student; // Add this property to hold the student data.

  const StudentDetailsView({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name: ${student.fname}', style: const TextStyle(fontSize: 18)),
            Text('Last Name: ${student.lname}', style: const TextStyle(fontSize: 18)),
            Text('City: ${student.city}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

