import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/ToDoRoute.dart';

import 'HomePage.dart';
import 'routes/CanPopRoute.dart';
import 'routes/MayBePopRoute.dart';
import 'routes/NamedReplacementRoute.dart';
import 'routes/OnUnknownRoute.dart';
import 'routes/PopAndPushNamed.dart';
import 'routes/PopUntilRoute.dart';
import 'routes/PushAndRemoveUntilRoute.dart';
import 'routes/PushNamedRoute.dart';
import 'routes/PushReplacementRoute.dart';
import 'routes/RemoveRoute.dart';
import 'routes/RemoveRouteBelow.dart';
import 'routes/ReplaceRoute.dart';
import 'routes/ReplaceRouteBelow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => OnUnknownRoute()),
      routes: {
        '/canPop': (context) => CanPopRoute(),
        '/maybePop': (context) => MayBePopRoute(),
        '/namedReplacement': (context) => NamedReplacementRoute(),
        '/popAndPushNamed': (context) => PopAndPushNamed(),
        '/popUntil': (context) => PopUntilRoute(),
        '/pushAndRemoveUntil': (context) => PushAndRemoveUntil(),
        '/pushNamed': (context) => PushNamedRoute(),
        '/pushReplacement': (context) => PushReplacementRoute(),
//        '/pushReplacementNamed': (context) => PushReplacementNamedRoute(),
        '/removeRoute': (context) => RemoveRoute(),
        '/removeRouteBelow': (context) => RemoveRouteBelow(),
        '/replace': (context) => ReplaceRoute(),
        '/replaceRouteBelow': (context) => ReplaceRouteBelow(),
        '/todo': (context) => ToDoRoute(),
      },
      home: HomePage(title: 'Flutter Navigation Demo'),
    );
  }
}
