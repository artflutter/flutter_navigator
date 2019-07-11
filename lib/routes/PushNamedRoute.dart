import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushNamedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push named',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
