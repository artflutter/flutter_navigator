import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class PushNamedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'push[Named]',
      child: Description(
        title: 'push / pushNamed',
        description: <String>[
          '`push` - adds the given route onto the navigator',
          '`pushNamed` - adds the named route onto the navigator.',
          'This two methods works almost the same way. `push` oftenly uses `MaterialPageRoute` for creating a route while `pushNamed` relays only on the route name defined in `MaterialApp`'
        ],
        button: null,
      ),
    );
  }
}
