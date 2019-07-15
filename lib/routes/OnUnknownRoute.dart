import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class OnUnknownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Not found route',
      button: Description(
        title: 'onUnknownRoute',
        description: <String>[
          'Called when `onGenerateRoute` fails to generate a route.',
          'This callback is typically used for error handling. For example, this callback might always generate a "not found" page that describes the route that wasn\'t found.',
          'Unknown routes can arise either from errors in the app or from external requests to push routes, such as from Android intents.'
        ],
        button: null,
      ),
    );
  }
}
