import 'package:flutter/material.dart';

import 'Description.dart';
import 'drawer/main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  int _counter = 0;
  final key = GlobalKey();

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }

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
      body: Builder(builder: (context) {
        return Description(
          title: 'asdfasdf',
          description: ['asdfasdf', 'fasdfasdf'],
          button: null,
        );
      }),
    );
  }
}
