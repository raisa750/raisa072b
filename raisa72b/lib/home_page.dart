import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  final List<String> subtitles = ["Welcome back"];

  String getRandomSubtitle() {
    final random = Random();
    return subtitles[random.nextInt(subtitles.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Raisa"),
              accountEmail: null,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Everyone",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),

            Text(
              getRandomSubtitle(),
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(width: 110, height: 150, color: Colors.red),

                SizedBox(width: 15),

                Container(width: 110, height: 150, color: Colors.green),

                SizedBox(width: 15),

                Container(width: 110, height: 150, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
