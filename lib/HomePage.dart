import 'package:flutter/material.dart';

import 'drawer/main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  final key = GlobalKey();

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      key: key,
      title: Text(widget.title),
    );
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: drawerContent(),
          ),
        ),
        appBar: appBar,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //SelectionButton(),
            FloatingActionButton(
//              heroTag: "Named",
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.plus_one),
            ),
          ],
        ));
  }
}
