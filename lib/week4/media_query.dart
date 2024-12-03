import 'package:flutter/material.dart';

class MediaQueryview extends StatelessWidget {
  const MediaQueryview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * .5,
          child: Image.asset(
            'assets/images/dino1.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
