import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class CanPopRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final navigator = Navigator.of(context);
//    final scaffold = Scaffold.of(context)

    return SampleRouteItem(
      title: 'Can pop',
      button: Builder(builder: (context) {
        final navigator = Navigator.of(context);
        final scaffold = Scaffold.of(context);

        return Description(
          title: 'canPop',
          description: <String>[
            'Whether the navigator of specified context can be popped.',
            'The initial route cannot be popped off the navigator.  This function returns true only if popping the navigator would not remove the initial route.',
          ],
          button: RaisedButton(
            child: Text('Can I pop?'),
            onPressed: () {
              if (navigator.canPop()) {
                scaffold
                  ..showSnackBar(
                    SnackBar(
                      content: Text("Sure you can!"),
                      action: SnackBarAction(
                        label: 'Let\'s pop!',
                        onPressed: () {
                          if (navigator.canPop()) {
                            navigator.pop();
                          }
                        },
                      ),
                    ),
                  );
              } else {
                scaffold
                  ..showSnackBar(
                    SnackBar(
                      content: Text("There is nothing to pop"),
                    ),
                  );
              }
//            Navigator.maybePop(context);
            },
          ),
        );
      }),
    );
  }
}
