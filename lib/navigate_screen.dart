import 'package:flutter/material.dart';
import 'next_screen.dart';

class NavigateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigate screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Next'),
          textColor: Colors.white,
          color: Colors.lightBlue,
          onPressed: () {
            _onPressNext(context);
          }
        )
      )
    );
  }

  void _onPressNext(BuildContext context) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
      new NextScreen()
    ));
  }
}
