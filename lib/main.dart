import 'package:flutter/material.dart';

import 'package:flutter_routing/ToDo.dart';
import 'package:flutter_routing/routes/ToDoRoute.dart';
import 'package:flutter_routing/drawer/main.dart';

import 'HomePage.dart';
import 'routes/NamedReplacementRoute.dart';
import 'routes/OnUnknownRoute.dart';
import 'routes/PopAndPushNamed.dart';
import 'routes/PopUntilRoute.dart';
import 'routes/PushAndRemoveUntilRoute.dart';
import 'routes/PushNamedAndRemoveUntilRoute.dart';
import 'routes/PushNamedRoute.dart';
import 'routes/PushReplacementNamedRoute.dart';
import 'routes/PushReplacementRoute.dart';
import 'routes/MayBePopRoute.dart';
import 'routes/RemoveRoute.dart';
import 'routes/ReplaceRoute.dart';
import 'routes/ReplaceRouteBelow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Route replaceRoute;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => OnUnknownRoute()),
      routes: {
        '/maybePop': (context) => MayBePopRoute(),
        '/pushReplacement': (context) => PushReplacementRoute(),
        '/removeRoute': (context) => RemoveRoute(),
        '/replace': (context) => ReplaceRoute(),
        '/replaceRouteBelow': (context) => ReplaceRouteBelow(),
        '/removeRouteBelow': (context) => ReplaceRouteBelow(),
        '/pushReplacementNamed': (context) => PushReplacementNamedRoute(),
        '/namedReplacement': (context) => NamedReplacementRoute(),
        '/popAndPushNamed': (context) => PopAndPushNamed(),
        '/popUntil': (context) => PopUntilRoute(),
        '/pushNamed': (context) => PushNamedRoute(),
        '/pushNamedAndRemoveUntil': (context) => PushNamedAndRemoveUntil(),
        '/pushAndRemoveUntil': (context) => PushAndRemoveUntil(),
        '/todo': (context) => ToDoRoute(),
      },
      home: HomePage(title: 'Flutter Navigation Demo'),
    );
  }
}
