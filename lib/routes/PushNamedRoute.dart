import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushNamedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push named',
      buttonTitle: 'Press to go back',
      onPressed: () => Navigator.pop(context),
    );
  }
}
