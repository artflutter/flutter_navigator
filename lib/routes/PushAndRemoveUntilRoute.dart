import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PushAndRemoveUntil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push and remove until',
      buttonTitle: 'Press to go back',
      onPressed: () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => SampleRouteItem(
            title: 'Replaced page',
            buttonTitle: 'Press to go back',
            onPressed: () => Navigator.pop(context),
          ),
        ),
        (Route<dynamic> route) {
          return route is ModalRoute && route.settings.name == '/';
        },
      ),
    );
  }
}
