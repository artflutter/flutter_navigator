import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class RemoveRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Remove route',
      child: Description(
        title: 'removeRoute',
        description: <String>[
          'Immediately remove route from the navigator and Route.dispose it.',
          'The removed route is removed without being completed, so this method does not take a return value argument. No animations are run as a result of this method call.'
        ],
        button: RaisedButton(
          child: Text('Remove current route'),
          onPressed: () =>
              Navigator.removeRoute(context, ModalRoute.of(context)),
        ),
      ),
    );
  }
}
