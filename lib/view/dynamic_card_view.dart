import 'package:flutter/material.dart';
import 'package:new_project/common/my_card_common.dart';
import 'package:new_project/common/my_snackbar_common.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Card View'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // Refresh the data here
            },
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i < 10; i++) ...{
              GestureDetector(
                onTap: () {
                  showMySnackBar(
                    context,
                    'Card $i clicked',
                    i % 2 == 0 ? Colors.blue : Colors.green,
                  );
                },
                child: MyCard(
                  text: 'Card $i',
                  color: i % 2 == 0 ? Colors.blue : Colors.green,
                ),
              ),
              // child: MyCard(text: 'card $i',),
            }
          ],
        ),
      )),
    );
  }
}
