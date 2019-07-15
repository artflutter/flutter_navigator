import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class NamedReplacementRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Named replacement',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
