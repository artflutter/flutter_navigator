import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class PushAndRemoveUntil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Route replacementRoute = MaterialPageRoute(
      builder: (context) => SampleRouteItem(
        title: 'Replaced page',
        button: Description(
          title: 'Horray!',
          description: <String>[
            'If you used the replacement with `custom` predicate there will be a back button and you can happily return on the home page',
            'If you choose the `ModalRoute` predicate all the routes below was removed form the stack. The only way to continue is to restart the app.',
          ],
          button: null,
        ),
      ),
    );

    return SampleRouteItem(
      title: 'Push and remove until',
      button: Description(
          title: 'push[Named]AndRemoveUntil',
          description: <String>[
            'Push the given route onto the navigator and then remove all the previous routes until the predicate returns true.',
            'Use `ModalRoute.withName` as predicate carefully. If the targe route name handles pop internally(like the root route with opened drawer) `ModalRoute.withName` will return `false` this could lead to unexpected results',
            'The actual behaviour has bugs on current(1.7.8 version). There is a merged ticke `Navigator pushAndRemoveUntil Fix #35223` that aims to fix those issues'
          ],
          button: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text('Replace until `/` with `custom` predicate'),
                onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  replacementRoute,
                  (Route<dynamic> route) {
                    return route is ModalRoute && route.settings.name == '/';
                  },
                ),
              ),
              RaisedButton(
                child: Text('Replace until `/` with `ModalRoute` predicate'),
                onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  replacementRoute,
                  ModalRoute.withName('/'),
                ),
              ),
            ],
          )),
    );
  }
}
