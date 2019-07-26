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
          title: 'Wellcome to the navigation demo',
          description: [
            'This app aims to showcase some of the routing capabilities - use drawer to open the list of existing samples. Feel free to contribute into the repo to extend the demo list.',
            'Many apps have a navigator near the top of their widget hierarchy in order to display their logical history using an Overlay with the most recently visited pages visually on top of the older pages. Using this pattern lets the navigator visually transition from one page to another by moving the widgets around in the overlay. Similarly, the navigator can be used to show a dialog by positioning the dialog widget above the current page.',
            'Mobile apps typically reveal their contents via full-screen elements called "screens" or "pages". In Flutter these elements are called routes and they\'re managed by a Navigator widget. The navigator manages a stack of Route objects and provides methods for managing the stack, like Navigator.push and Navigator.pop.',
            'When your user interface fits this paradigm of a stack, where the user should be able to navigate back to an earlier element in the stack, the use of routes and the Navigator is appropriate. On certain platforms, such as Android, the system UI will provide a back button (outside the bounds of your application) that will allow the user to navigate back to earlier routes in your application\'s stack. On platforms that don\'t have this build-in navigation mechanism, the use of an AppBar (typically used in the Scaffold.appBar property) can automatically add a back button for user navigation.'
          ],
          button: null,
        );
      }),
    );
  }
}
