import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import 'detail_screen.dart';

class NoInfoScreen extends StatelessWidget {
  const NoInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reusable Widgets'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Column(
        children: [
          CustomCard(
            name: 'Paul Smith',
            image: 'cat2.png',
            link: DetailScreen(),
            icon: Icons.apple,
          ),
          Center(
            child: Text('Sorry, No Information available'),
          ),
        ],
      ),
    );
  }
}
