import 'package:flutter/material.dart';
import 'next_screen.dart';
import 'todo_screen.dart';
import 'home_screen.dart';
import 'navigate_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                child: new Text('Go to next'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: _navigateToNext),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                child: new Text('Go to Todo'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: _navigateToTodo),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                child: new Text('Go to HomeScreen'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: _navigateToHome),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                child: new Text('Go to NavigateScreen'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: _navigateToNavigate),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _navigateToNext() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
      new NextScreen()
    ));
  }

  void _navigateToTodo() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
      new TodoScreen()
    ));
  }

  void _navigateToHome() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
      new HomeScreen()
    ));
  }

  void _navigateToNavigate() {
    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) =>
      new NavigateScreen()
    ));
  }
}
