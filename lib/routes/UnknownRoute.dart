import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class UnknownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Not found route',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
