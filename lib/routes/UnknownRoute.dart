import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class UnknownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Not found route',
      buttonTitle: 'Press to go back',
      onPressed: () => Navigator.pop(context),
    );
  }
}
