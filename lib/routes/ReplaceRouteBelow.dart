import 'package:flutter/material.dart';
import 'package:flutter_routing/widgets/ToggleButton.dart';

import '../Description.dart';
import 'ReplacementRoute.dart';
import 'SampleRouteItem.dart';

class ReplaceRouteBelow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Replace route below',
      child: Description(
        title: 'replaceRouteBelow',
        description: <String>[
          'Replaces a route on the navigator with a new route. The route to be replaced is the one below the given anchorRoute.',
          'The old route must not be current visible, as this method skips the animations and therefore the removal would be jarring if it was visible.',
        ],
        button: RaisedButton(
          child: Text('Move forward'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SampleRouteItem(
                  title: 'Replace route below',
                  child: Description(
                    title: 'replaceRouteBelow',
                    description: <String>[
                      'Once you click the route below will be replaced with the new one.'
                    ],
                    button: ToggleButton(
                      replacement: Text(
                        'Done! You can go back.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      child: Text('Replace previous route'),
                      onPressed: () => Navigator.replaceRouteBelow(
                        context,
                        anchorRoute: ModalRoute.of(context),
                        newRoute: MaterialPageRoute(
                          builder: (context) => ReplacementRoute(),
                        ),
                      ),
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
