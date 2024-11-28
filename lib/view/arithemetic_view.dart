import 'package:flutter/material.dart';

class ArithemeticView extends StatefulWidget {
  const ArithemeticView({super.key});

  @override
  State<ArithemeticView> createState() => _ArithemeticViewState();
}

class _ArithemeticViewState extends State<ArithemeticView> {
  int first = 0;
  int second = 0;
  int result = 0;

  // global key for form state
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  onChanged: (value) {
                    first = int.tryParse(value) ?? 0;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter the first number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return 'Enter first number';
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  second = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter the second number',
                ),
                validator: (value) {
                  if (value!.isEmpty) return 'Enter second number';
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Result: $result',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = first + second;
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = first - second;
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = first * second;
                      });
                    }
                  },
                  child: const Text('Multiplication'),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
