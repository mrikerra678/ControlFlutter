import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    if (_counter < 33) {
      setState(() {
        _counter++;
      });
    }
  }

  void _restcounter() {
    setState(() {
      _counter--;
    });
  }

  Widget anadirContainer(index) {
    if (index % 5 == 0 && index % 3 == 0) {
      return Container(
        child: Text("FACEBOOK"),
      );
    } else if (index % 3 == 0) {
      return Container(
        child: Text("FACE"),
      );
    } else if (index % 5 == 0) {
      return Container(
        child: Text("BOOK"),
      );
    } else {
      return Container(child: Text(index.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ), // This trailing comma make
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                FloatingActionButton(
                  onPressed: _restcounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(52),
          ),
          Container(
            child: Column(
              children: <Widget>[
                GridView.count(
                  shrinkWrap: true,
                  primary: true,
                  crossAxisCount: 10,
                  children: List.generate(_counter, (index) {
                    return anadirContainer(index + 1);
                  }),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

/*
 


 */
