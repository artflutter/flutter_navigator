import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class RemoveRouteBelow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Remove route below',
      child: Description(
        title: 'removeRouteBelow',
        description: <String>[
          'Immediately remove a route from the navigator and Route.dispose it. The route to be replaced is the one below the given anchorRoute.',
          'The removed route is removed without being completed, so this method does not take a return value argument. No animations are run as a result of this method call.',
          'The routes below and above the removed route are notified.',
        ],
        button: RaisedButton(
          child: Text('Move forward'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SampleRouteItem(
                  title: 'Remove route below',
                  child: Description(
                    title: 'removeRouteBelow',
                    description: <String>[
                      'Each press on the button removes one route below current',
                      'First press simply removes a route below so the back button will bring you to the main app',
                      'Second press removes the next rote below which will be the root one. The back button will disappear. The only way to continue is to restart the app'
                    ],
                    button: RaisedButton(
                      child: Text('Remove route below current'),
                      onPressed: () {
                        Navigator.removeRouteBelow(
                            context, ModalRoute.of(context));
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
