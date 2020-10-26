import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  final String title;

  FeedbackScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 40,
            itemBuilder: (BuildContext _context, int index) {
              return Card(
                color: (index % 2) == 0 ? Colors.blue : null,
                child: Text("item $index"),
              );
            }),
      ),
    );
  }
}
