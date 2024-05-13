import 'package:flutter/material.dart';

class InstagramPostCard extends StatelessWidget {
  const InstagramPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/img1.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  'Test User',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/img3.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Caption text goes here...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.favorite),
                SizedBox(width: 5),
                Text('Likes'),
                SizedBox(width: 10),
                Icon(Icons.comment),
                SizedBox(width: 5),
                Text('Comments'),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
