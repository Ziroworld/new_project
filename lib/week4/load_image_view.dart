import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Load Image'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/dino1.jpg'),
            Image.asset('assets/images/dino2.jpg'),
            Image.asset('assets/images/dino3.jpg'),
          ],
        ),
      ),
    );
  }
}
