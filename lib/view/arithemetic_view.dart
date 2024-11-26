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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the first number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the second number',
              ),
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
                  setState(() {
                    result = first + second;
                  });
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
                  setState(() {
                    result = first - second;
                  });
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
                  setState(() {
                    result = first * second;
                  });
                },
                child: const Text('Multiplication'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
