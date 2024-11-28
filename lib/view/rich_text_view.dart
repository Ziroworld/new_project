import 'package:flutter/material.dart';

class RichTextView extends StatefulWidget {
  const RichTextView({super.key});

  @override
  State<RichTextView> createState() => _RichTextViewState();
}

class _RichTextViewState extends State<RichTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RichText(
        text: const TextSpan(
            text: 'H',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
            ),
            children: [
              TextSpan(
                text: 'ello',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: 'W',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: 'orld',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              )
            ]),
      ),
    );
  }
}
