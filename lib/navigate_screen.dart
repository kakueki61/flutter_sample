import 'package:flutter/material.dart';
import 'detail_screen.dart';

class NavigateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigate screen'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                child: new Text('A'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () {
                  _navigateToNext(context, 'A');
                }
              )
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                child: new Text('B'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () {
                  _navigateToNext(context, 'B');
                }
              )
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
                child: new Text('C'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () {
                  _navigateToNext(context, 'C');
                }
              )
            )
          ]
        )
      )
    );
  }

  void _navigateToNext(BuildContext context, String text) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
      new DetailScreen(text: text)
    ));
  }
}
