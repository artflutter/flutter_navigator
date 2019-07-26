import 'package:flutter/material.dart';

import '../Description.dart';
import 'ReplacementRoute.dart';
import 'SampleRouteItem.dart';

class PushReplacementRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push replacement [named]',
      child: Description(
        title: 'pushReplacement[Named]',
        description: <String>[
          '`pushReplacement` - replaces current route with the given one',
          '`pushReplacementNamed` - replaces current route with the given named one',
          'Replace the current route of the navigator by pushing the given route and then disposing the previous route once the new route has finished animating in.',
          'This two methods works almost the same way. `pushReplacement` oftenly uses `MaterialPageRoute` for creating a route while `pushReplacementNamed` relays only on the route name defined in `MaterialApp`',
        ],
        button: RaisedButton(
          child: Text('Replace current route'),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ReplacementRoute(),
              //),
            ),
          ),
        ),
      ),
    );
  }
}
