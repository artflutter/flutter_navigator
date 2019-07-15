import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushReplacementNamedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push replacement named',
      button: RaisedButton(
        child: Text('Replace current route'),
        onPressed: () =>
            Navigator.pushReplacementNamed(context, '/namedReplacement'),
      ),
    );
  }
}
