import 'package:flutter/material.dart';
import 'package:flutter_routing/widgets/ToggleButton.dart';

import '../Description.dart';
import 'ReplacementRoute.dart';
import 'SampleRouteItem.dart';

class ReplaceRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Route replaceRoute = ModalRoute.of(context);

    return SampleRouteItem(
      title: 'Replace route',
      child: Description(
        title: 'replaceRoute',
        description: <String>[
          'Replaces a route on the navigator with a new route.',
          'The old route must not be current visible, as this method skips the animations and therefore the removal would be jarring if it was visible.'
        ],
        button: RaisedButton(
          child: Text('Move forward'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (internalContext) {
                  return SampleRouteItem(
                    title: 'Replace route',
                    child: Description(
                      title: 'Replace route',
                      description: [
                        'If you press the button the previous route will be replaced',
                        'Press back to see the resutls',
                      ],
                      button: Builder(
                        builder: (context) => ToggleButton(
                          replacement: Text(
                            'Done! You can go back.',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          child: Text('Replace previous route'),
                          onPressed: () => Navigator.replace(
                            context,
                            oldRoute: replaceRoute,
                            newRoute: MaterialPageRoute(
                              builder: (context) => ReplacementRoute(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
