import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/SampleRouteItem.dart';

import '../Description.dart';

class PushTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+push[Named]'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SampleRouteItem(
              title: 'push[Named]',
              button: Description(
                title: 'push / pushNamed',
                description: <String>[
                  '`push` - adds the given route onto the navigator',
                  '`pushNamed` - adds the named route onto the navigator.',
                  'This two methods works almost the same way. `push` oftenly uses `MaterialPageRoute` for creating a route while `pushNamed` relays only on the route name defined in `MaterialApp`'
                ],
                button: null,
              ),
            ),
          ),
        );
      },
    );
  }
}
