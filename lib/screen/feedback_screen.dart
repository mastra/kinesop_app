import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FEEDBACK"),
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
