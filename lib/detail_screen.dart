import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final String text;

  DetailScreen({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Detail screen'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                  '$text',
                  style: new TextStyle(
                    fontSize: 50.0
                  ),
              )
            ),
            new RaisedButton(
              child: new Text('Back'),
              textColor: Colors.white,
              color: Colors.lightBlue,
              onPressed: () => Navigator.pop(context)
            )
          ]
        )
      )
    );
  }
}
