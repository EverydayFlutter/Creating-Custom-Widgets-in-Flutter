import 'package:flutter/material.dart';
import 'package:flutter_how_tos_tips/screens/detail_screen.dart';
import 'package:flutter_how_tos_tips/screens/no_info_screen.dart';
import 'package:flutter_how_tos_tips/widgets/custom_card.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IdCard(),
    ));

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reusable Widgets'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomCard(
                name: 'Paul Smith',
                image: 'cat2.png',
                link: DetailScreen(),
                icon: Icons.apple,
              ),
              CustomCard(
                name: 'Pater Walker',
                image: 'cat3.png',
                link: DetailScreen(),
                icon: Icons.favorite,
              ),
              CustomCard(
                name: 'Joe Parker',
                image: 'cat4.png',
                link: NoInfoScreen(),
                icon: Icons.apple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
