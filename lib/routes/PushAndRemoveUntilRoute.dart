import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushAndRemoveUntil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push and remove until',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => SampleRouteItem(
              title: 'Replaced page',
              button: RaisedButton(
                child: Text('Press to go back'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
          (Route<dynamic> route) {
            return route is ModalRoute && route.settings.name == '/';
          },
        ),
      ),
    );
  }
}
