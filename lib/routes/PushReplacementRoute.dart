import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushReplacementRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push replacement',
      button: RaisedButton(
        child: Text('Replace current route'),
        onPressed: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SampleRouteItem(
              title: 'Replaced route',
              button: RaisedButton(
                child: Text('Press to go back'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
