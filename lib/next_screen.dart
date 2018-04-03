import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Next screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Back'),
          textColor: Colors.white,
          color: Colors.lightBlue,
          onPressed: () => Navigator.pop(context)
        )
      )
    );
  }
}
