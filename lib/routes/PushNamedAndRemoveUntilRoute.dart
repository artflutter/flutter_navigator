import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushNamedAndRemoveUntil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push named and remove until',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.pushNamedAndRemoveUntil(
          context,
          '/todo',
          (Route<dynamic> route) {
            return route is ModalRoute && route.settings.name == '/';
          },
        ),
      ),
    );
  }
}
