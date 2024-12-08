import 'package:flutter/material.dart';
// import 'package:new_project/view/student_details_view.dart';
import 'package:new_project/model/student_model.dart';

// class Student {
//   final String fname;
//   final String lname;
//   final String city;

//   Student({required this.fname, required this.lname, required this.city});
// }

class StudentDetailsView extends StatefulWidget {
  final Student student; // Add this to accept the Stusdent object.

  const StudentDetailsView(
      {super.key, required this.student}); // Make student a required parameter.

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final _gap = const SizedBox(height: 8);

  final items = [
    const DropdownMenuItem(value: 'Kathmandu', child: Text('Kathmandu')),
    const DropdownMenuItem(value: 'Pokhara', child: Text('Pokhara')),
    const DropdownMenuItem(value: 'Chitwan', child: Text('Chitwan')),
  ];

  List<Student> lstStudents = [];
  String? selectedCity;

  // Controllers
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                labelText: 'Enter First Name',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                labelText: 'Enter Last Name',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              items: items,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Select City',
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_fnameController.text.isEmpty ||
                      _lnameController.text.isEmpty ||
                      selectedCity == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please fill all fields')),
                    );
                    return;
                  }

                  setState(() {
                    lstStudents.add(
                      Student(
                        fname: _fnameController.text.trim(),
                        lname: _lnameController.text.trim(),
                        city: selectedCity!,
                      ),
                    );
                    _fnameController.clear();
                    _lnameController.clear();
                    selectedCity = null;
                  });
                },
                child: const Text('Add Student'),
              ),
            ),
            _gap,
            Expanded(
              child: lstStudents.isEmpty
                  ? const Center(child: Text('No students added yet'))
                  : ListView.builder(
                      itemCount: lstStudents.length,
                      itemBuilder: (context, index) {
                        final student = lstStudents[index];
                        return ListTile(
                          title: Text('${student.fname} ${student.lname}'),
                          subtitle: Text(student.city),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    StudentDetailsView(student: student),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    super.dispose();
  }
}
