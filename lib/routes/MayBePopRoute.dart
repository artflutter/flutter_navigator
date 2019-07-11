import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class MayBePopRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Maybe pop',
      button: RaisedButton(
        child: Text('Press to go back'),
        onPressed: () => Navigator.maybePop(context),
      ),
    );
  }
}
