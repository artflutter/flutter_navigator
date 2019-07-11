import 'package:flutter/material.dart';

import 'package:flutter_routing/ToDo.dart';
import 'package:flutter_routing/ToDoRoute.dart';
import 'package:flutter_routing/drawer/main.dart';

import 'routes/PopAndPushNamed.dart';
import 'routes/PopUntilRoute.dart';
import 'routes/PushAndRemoveUntilRoute.dart';
import 'routes/PushNamedAndRemoveUntilRoute.dart';
import 'routes/PushNamedRoute.dart';
import 'routes/PushReplacementRoute.dart';
import 'routes/MayBePopRoute.dart';
import 'routes/RemoveRoute.dart';
import 'routes/ReplaceRouteBelow.dart';
import 'routes/SampleRouteItem.dart';
import 'routes/UnknownRoute.dart';

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
          MaterialPageRoute(builder: (context) => UnknownRoute()),
      routes: {
        '/maybePop': (context) => MayBePopRoute(),
        '/pushReplacement': (context) => PushReplacementRoute(),
        '/removeRoute': (context) => RemoveRoute(),
        '/replace': (context) => SampleRouteItem(
              title: 'Replace route',
              button: RaisedButton(
                child: Text('Replcae current route'),
                onPressed: () {
                  replaceRoute = ModalRoute.of(context);
                  Navigator.pushNamed(context, '/replaceAction');
                },
              ),
            ),
        '/replaceAction': (context) => SampleRouteItem(
              title: 'Replace route',
              button: RaisedButton(
                child: Text('Replcae current route'),
                onPressed: () {
                  Navigator.replace(
                    context,
                    oldRoute: replaceRoute,
                    newRoute: MaterialPageRoute(
                      builder: (context) => SampleRouteItem(
                        title: 'This route is a replacment',
                        button: RaisedButton(
                          child: Text('Press to go back'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
        '/replaceRouteBelow': (context) => ReplaceRouteBelow(),
        '/removeRouteBelow': (context) => ReplaceRouteBelow(),
        '/pushReplacementNamed': (context) => SampleRouteItem(
              title: 'Push replacement named',
              button: RaisedButton(
                child: Text('Replace current route'),
                onPressed: () => Navigator.pushReplacementNamed(
                    context, '/namedReplacement'),
              ),
            ),
        '/namedReplacement': (context) => SampleRouteItem(
              title: 'Named replacement',
              button: RaisedButton(
                child: Text('Press to go back'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
        '/popAndPushNamed': (context) => PopAndPushNamed(),
        '/popUntil': (context) => PopUntilRoute(),
        '/pushNamed': (context) => PushNamedRoute(),
        '/pushNamedAndRemoveUntil': (context) => PushNamedAndRemoveUntil(),
        '/pushAndRemoveUntil': (context) => PushAndRemoveUntil(),

//                Navigator.pushNamed(context, '/pushNamedAndRemoveUntilAction')),

//        '/pushNamedAndRemoveUntilAction': (context) => SampleRouteItem(
//              title: 'Push named and remove until action',
//              buttonTitle: 'Press to go back++',
//              onPressed: () => Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) => SampleRouteItem(
//                    title: 'Push ME',
//                    buttonTitle: 'Press to go back',
//        onPressed: () => Navigator.pushNamedAndRemoveUntil(
//              context,
//              '/todo',
//              ModalRoute.withName('/'),
//            ),
//                  ),
//                ),
//              ),
//            ),
//
//        '/first': (context) => FirstRoute(),
//        '/return': (context) => ReturnRoute(),
//        '/hero': (context) => HeroAnimatedRoute(),
        '/todo': (context) => ToDoRoute(
              todos: List.generate(
                20,
                (i) => Todo(
                  'Todo $i',
                  'A description of what needs to be done for Todo $i',
                ),
              ),
            ),
//        // When navigating to the "/second" route, build the SecondScreen widget.
//        '/second': (context) => SecondRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
//        endDrawer: Drawer(
//          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
//            Container(
//              height: 108,
//              child: DrawerHeader(
//                child: Text('Drawer Header'),
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                ),
//              ),
//            ),
//            ListTile(
//              title: Text('Slide right'),
//              onTap: () {
//                Navigator.push(context, SlideRightRoute(page: Push()));
//              },
//            ),
//            ListTile(
//              title: Text('Scale'),
//              onTap: () {
//                Navigator.push(context, ScaleRoute(page: Push()));
//              },
//            ),
//            ListTile(
//              title: Text('Rotation'),
//              onTap: () {
//                Navigator.push(context, RotationRoute(page: Push()));
//              },
//            ),
//            ListTile(
//              title: Text('Size'),
//              onTap: () {
//                Navigator.push(context, SizeRoute(page: Push()));
//              },
//            ),
//            ListTile(
//              title: Text('Fade'),
//              onTap: () {
//                Navigator.push(context, FadeRoute(page: Push()));
//              },
//            ),
//            ListTile(
//              title: Text('Scale & Rotate'),
//              onTap: () {
//                Navigator.push(context, ScaleRotateRoute(page: Push()));
//              },
//            ),
//            ListTile(
//              title: Text('Double slide'),
//              onTap: () {
////                Navigator.pop(context);
//
//                Navigator.push(
//                    context,
//                    DoubleSlideRoute(
//                        exitPage: Navigator.of(context).widget,
//                        enterPage: Push()));
//              },
//            ),
//          ]),
//        ),
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
