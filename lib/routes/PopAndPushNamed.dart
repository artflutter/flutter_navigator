import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PopAndPushNamed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Pop and push named',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
