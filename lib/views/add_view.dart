import 'package:flutter/material.dart';

class AddView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Add Map'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(1.0, 10.0, 1.0, 10.0),
        child: Text('Hello!'),
      ),
    );
  }
}
