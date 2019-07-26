import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class PopAndPushNamed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Pop and push named',
      child: Description(
        title: 'popAndPushNamed',
        description: <String>[
          'Pop the current route off the navigator and push a named route in its place.',
          'You can use it to push new route and cose the drawer in the same time. Navigate back and the drawer will be closed. While in previous examples it stays open',
        ],
        button: null,
      ),
    );
  }
}
