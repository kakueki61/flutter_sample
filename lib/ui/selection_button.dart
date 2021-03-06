import 'package:flutter/material.dart';
import 'package:flutter_sample/selection_screen.dart';

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: new Text('Pick an option, any option!'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SelectionScreen())
    );

    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('$result')));
  }
}
