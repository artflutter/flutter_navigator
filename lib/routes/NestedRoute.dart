import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class NestedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'nested/one',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'nested/one':
            builder = (BuildContext internalContext) => SampleRouteItem(
                title: 'Nested route one',
                button: Description(
                  title: 'Separete routing',
                  description: [
                    'The following example demonstrates how a nested Navigator can be used to present a standalone user registration journey.',
                    '`Moove next` will lead you to second page of imaginary subroute',
                    '`Moove away` will return you back to the main Navigator',
                  ],
                  button: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      RaisedButton(
                          child: Text('Move next'),
                          onPressed: () => Navigator.pushNamed(
                              internalContext, 'nested/two')),
                      RaisedButton(
                          child: Text('Move away'),
                          onPressed: () => Navigator.pop(context)),
                    ],
                  ),
                ));
            break;
          case 'nested/two':
            builder = (BuildContext internalContext) => SampleRouteItem(
                  title: 'Nested route one',
                  button: Description(
                    title: 'Separete routing',
                    description: [
                      'The journey ends here',
                      'Use default \'<\'(back) button to move back or press `I\'m done` to get back to main app'
                    ],
                    button: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        RaisedButton(
                            child: Text('I\'m done'),
                            onPressed: () => Navigator.pop(context)),
                      ],
                    ),
                  ),
                );
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
