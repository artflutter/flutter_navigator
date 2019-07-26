import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class ReplacementRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'This route is a replacment',
      child: Description(
        title: 'This route is a replacment',
        description: [],
        button: null,
      ),
    );
  }
}
