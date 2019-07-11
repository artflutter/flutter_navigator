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
              buttonTitle: 'Replcae current route',
              onPressed: () {
                replaceRoute = ModalRoute.of(context);
                Navigator.pushNamed(context, '/replaceAction');
              },
            ),
        '/replaceAction': (context) => SampleRouteItem(
              title: 'Replace route',
              buttonTitle: 'Replcae current route',
              onPressed: () {
                Navigator.replace(
                  context,
                  oldRoute: replaceRoute,
                  newRoute: MaterialPageRoute(
                    builder: (context) => SampleRouteItem(
                      title: 'This route is a replacment',
                      buttonTitle: 'Press to go back',
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                );
              },
            ),
        '/replaceRouteBelow': (context) => ReplaceRouteBelow(),
        '/removeRouteBelow': (context) => ReplaceRouteBelow(),
        '/pushReplacementNamed': (context) => SampleRouteItem(
              title: 'Push replacement named',
              buttonTitle: 'Replace current route',
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/namedReplacement'),
            ),
        '/namedReplacement': (context) => SampleRouteItem(
              title: 'Named replacement',
              buttonTitle: 'Press to go back',
              onPressed: () => Navigator.pop(context),
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
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              ...drawerContent(),

              ListTile(
                title: Text('removeRoute'),
                onTap: () => Navigator.pushNamed(context, '/removeRoute'),
              ),
              ListTile(
                title: Text('Not found route'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/notFoundRoute');
                },
              ),
              ListTile(
                title: Text('pushReplacementNamed'),
                onTap: () {
                  Navigator.pushNamed(context, '/pushReplacementNamed');
                },
              ),
//              ListTile(
//                title: Text('popAndPushNamed'),
//                onTap: () {
//                  Navigator.pushNamed(context, '/popAndPushNamed');
//                },
//              ),
              ListTile(
                title: Text('pushNamedAndRemoveUntil'),
                onTap: () {
                  Navigator.pushNamed(context, '/pushNamedAndRemoveUntil');
                },
              ),
              ListTile(
                title: Text('pushAndRemoveUntil'),
                onTap: () {
                  Navigator.pushNamed(context, '/pushAndRemoveUntil');
                },
              ),
              ListTile(
                title: Text('pushReplacement'),
                onTap: () {
                  Navigator.pushNamed(context, '/pushReplacement');
                },
              ),
              ListTile(
                title: Text('replace'),
                onTap: () {
                  Navigator.pushNamed(context, '/replace');
                },
              ),
              ListTile(
                title: Text('replaceRouteBelow'),
                onTap: () {
                  Navigator.pushNamed(context, '/replaceRouteBelow');
                },
              ),
              ListTile(
                title: Text('popUntil'),
                onTap: () {
                  Navigator.pushNamed(context, '/popUntil');
                },
              ),
              ListTile(
                title: Text('maybePop'),
                onTap: () {
                  Navigator.pushNamed(context, '/maybePop');
                },
                onLongPress: () async {
                  scaffoldKey.currentState
                    ..removeCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(
                            "MaybePop triggered 2 times but only one pop of Dreawer occured"),
                      ),
                    );
                  await Navigator.maybePop(context);
                  await Navigator.maybePop(context);
                },
              ),
              ListTile(
                title: Text('push'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SampleRouteItem(
                        title: 'Push',
                        buttonTitle: 'Press to go back',
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Push named route'),
                onTap: () {
                  Navigator.pushNamed(context, '/pushNamed');
                },
              ),

              ListTile(
                title: Text('canPop'),
                onTap: () {
                  final navigator = Navigator.of(context);

                  if (navigator.canPop()) {
                    navigator.pop();

                    scaffoldKey.currentState
                      ..showSnackBar(
                        SnackBar(
                          content: Text("Just poped the drawer"),
                          action: SnackBarAction(
                            label: 'Pop more',
                            onPressed: () {
                              if (!navigator.canPop()) {
                                scaffoldKey.currentState
                                  ..showSnackBar(
                                    SnackBar(
                                      content: Text("There is nothing to pop"),
                                    ),
                                  );
                              }
                            },
                          ),
                        ),
                      );
                  }
                },
              ),
              ListTile(
                title: Text('pop'),
                onTap: () {
                  Navigator.pop(context);
                  scaffoldKey.currentState
                    ..removeCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text("Just poped the drawer"),
                      ),
                    );
                },
              ),
              ListTile(
                title: Text('popAndPushNamed'),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/popAndPushNamed');
                },
              ),
//              ListTile(
//                title: Text('Todo list'),
//                onTap: () {
//                  if (Navigator.canPop(context)) {
//                    Navigator.pop(context);
//                  }
//
//                  Navigator.pushNamed(context, '/todo');
//                },
//              ),
//              ListTile(
//                title: Text('Direct push'),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => SecondRoute()),
//                  );
//                },
//              ),
//              ListTile(
//                title: Text('Hero animation'),
//                onTap: () {
//                  Navigator.pushNamed(context, '/hero');
//                },
//              ),
//              ListTile(
//                title: Text('Popup route'),
//                onTap: () {
//                  Navigator.push(
//                    context,
//                    PageRouteBuilder(
//                      opaque: false,
//                      pageBuilder: (BuildContext context, _, __) {
//                        return GestureDetector(
//                            onTap: () {
//                              Navigator.pop(context);
//                            },
//                            child: Center(child: Text('My PageRoute')));
//                      },
//                      transitionsBuilder: (___, Animation<double> animation,
//                          ____, Widget child) {
//                        return FadeTransition(
//                          opacity: animation,
//                          child: RotationTransition(
//                            turns: Tween<double>(begin: 0.1, end: 1.0)
//                                .animate(animation),
//                            child: child,
//                          ),
//                        );
//                      },
//                    ),
//                  );
//                },
//              ),
            ],
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
