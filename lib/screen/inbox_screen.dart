import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  final String title;

  InboxScreen(this.title);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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

  @override
  bool get wantKeepAlive => true;
}
