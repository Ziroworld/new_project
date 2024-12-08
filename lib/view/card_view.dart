import 'package:flutter/material.dart';
import 'package:new_project/common/my_card_common.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            MyCard(
              text: "Card 1",
            ),
            MyCard(
              text: "Card 2",
              color: Color.fromARGB(255, 168, 140, 140),
            ),
            MyCard(
              text: "Card 3",
            ),
            MyCard(
              text: "Card 4",
              color: Colors.greenAccent,
            ),
            MyCard(
              text: "Card 5",
              color: Colors.deepOrange,
            ),
            MyCard(
              text: "Card 6",
              color: Colors.purple,
            ),
          ],
        ),
      )),
    );
  }
}
