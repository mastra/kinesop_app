import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  final String title;

  InboxScreen(this.title);

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
                child: Text("item $index"),
              );
            }),
      ),
    );
  }
}
