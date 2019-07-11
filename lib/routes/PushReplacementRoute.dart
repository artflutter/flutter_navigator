import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushReplacementRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push replacement',
      buttonTitle: 'Replace current route',
      onPressed: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SampleRouteItem(
            title: 'Replaced route',
            buttonTitle: 'Press to go back',
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
