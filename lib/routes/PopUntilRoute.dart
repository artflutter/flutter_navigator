import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class PopUntilRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Pop until',
      buttonTitle: 'Press to execute popUntil',
      onPressed: () => Navigator.popUntil(
        context,
        ModalRoute.withName('/'),
      ),
    );
  }
}
