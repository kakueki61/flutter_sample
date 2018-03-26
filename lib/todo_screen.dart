import 'package:flutter/material.dart';
import 'models/todo.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todos = new List<Todo>.generate(20, (i) => new Todo('title ${i + 1}', 'desc ${i + 1}'));

    return new Scaffold(
      appBar: new AppBar(title: new Text('TODO')),
      body: new ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text(todos[index].title),
            onTap: () {},
          );
        }),
    );
  }
}
