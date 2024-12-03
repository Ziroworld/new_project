import 'package:flutter/material.dart';

class Containerview extends StatelessWidget {
  const Containerview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 98, 115, 141),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 87, 76, 38),
              border: Border.all(
                color: const Color.fromARGB(240, 0, 0, 0),
                width: 4,
              ),
            ),
            child: const Text("I am a container."),
          ),
        ),
      ),
    );
  }
}
