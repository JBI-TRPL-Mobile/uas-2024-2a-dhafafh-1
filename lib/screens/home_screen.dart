import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome William')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Placeholder(fallbackHeight: 200),
            Text(
              'Keep Moving Up',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'),
            Wrap(
              spacing: 10,
              children: [
                Chip(label: Text('Development')),
                Chip(label: Text('IT & Software')),
                Chip(label: Text('UI/UX')),
                Chip(label: Text('Business')),
              ],
            ),
            Text(
              'Top Courses',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(4, (index) => Placeholder()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
