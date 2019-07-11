import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class RemoveRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Remove route',
      buttonTitle: 'Remove current route',
      onPressed: () {
        Navigator.removeRoute(context, ModalRoute.of(context));
      },
    );
  }
}
