import 'package:flutter/material.dart';
import 'ui/selection_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Returnning Data Demo'),
      ),
      body: new Center(child: new SelectionButton(),),
    );
  }
}
