import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.image,
      this.name,
      required this.link,
      required this.icon});

  final String image;
  final String? name;
  final Widget link;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20.0),
          CircleAvatar(
            radius: 50.0,
            backgroundImage:
                AssetImage('assets/images/$image'), // Add your asset image here
          ),
          Divider(
            height: 30.0,
            color: Colors.grey[600],
            indent: 40,
            endIndent: 40,
          ),
          const Text(
            'NAME',
            style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
          ),
          const SizedBox(height: 10.0),
          Text(
            name!,
            style: const TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (e) => link,
                ),
              );
            },
            icon: Icon(
              icon,
              size: 40,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
