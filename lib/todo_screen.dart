import 'package:flutter/foundation.dart';
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
          final todo = todos[index];
          return new ListTile(
            title: new Text(todo.title),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (ctx) => new TodoDetailScreen(todo: todo))
              );
            },
          );
        }),
    );
  }
}

class TodoDetailScreen extends StatelessWidget {
  final Todo todo;

  TodoDetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('${todo.title}'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Text('${todo.description}')
      ),
    );
  }
}
