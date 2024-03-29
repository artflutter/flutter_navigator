import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/ToDoRoute.dart';

import 'HomePage.dart';
import 'config/application.dart';
import 'config/routes.dart';
import 'routes/AnimationRoute.dart';
import 'routes/CanPopRoute.dart';
import 'routes/HeroAnimatedRoute.dart';
import 'routes/MayBePopRoute.dart';
import 'routes/NamedReplacementRoute.dart';
import 'routes/NestedRoute.dart';
import 'routes/OnGenerateRoute.dart';
import 'routes/OnUnknownRoute.dart';
import 'routes/PopAndPushNamed.dart';
import 'routes/PopUntilRoute.dart';
import 'routes/PushAndRemoveUntilRoute.dart';
import 'routes/PushReplacementRoute.dart';
import 'routes/RemoveRoute.dart';
import 'routes/RemoveRouteBelow.dart';
import 'routes/ReplaceRoute.dart';
import 'routes/ReplaceRouteBelow.dart';
import 'routes/TabBottomNavigationRoute.dart';
import 'routes/TabTopNavigationRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => OnUnknownRoute()),
      routes: {
        '/onGenerateRoute': (context) => OnGenerateRoute(),
        '/animation': (context) => AnimationRoute(),
        '/nested': (context) => NestedRoute(),
        '/tabTop': (context) => TabTopNavigationRoute(),
        '/tabBottom': (context) => TabBottomNavigationRoute(),
        '/hero': (context) => HeroAnimatedRoute(),
        '/send': (context) => ToDoRoute(),
        '/canPop': (context) => CanPopRoute(),
        '/maybePop': (context) => MayBePopRoute(),
        '/namedReplacement': (context) => NamedReplacementRoute(),
        '/popAndPushNamed': (context) => PopAndPushNamed(),
        '/popUntil': (context) => PopUntilRoute(),
        '/pushAndRemoveUntil': (context) => PushAndRemoveUntil(),
        '/pushReplacement': (context) => PushReplacementRoute(),
        '/removeRoute': (context) => RemoveRoute(),
        '/removeRouteBelow': (context) => RemoveRouteBelow(),
        '/replace': (context) => ReplaceRoute(),
        '/replaceRouteBelow': (context) => ReplaceRouteBelow(),
      },
      home: HomePage(title: 'Flutter Navigation Demo'),
    );
  }
}
