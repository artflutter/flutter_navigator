import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class MayBePopRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Maybe pop',
      child: Description(
        title: 'maybePop',
        description: <String>[
          'Imagine you are on the initial Route and somebody mistakenly tried to pop this screen.',
          'Popping the only screen on the stack would close your app, because then it has no route to display.',
          'You definitely don’t want your user to have such an unexpected user experience.',
          'That’s where maybePop() will help you. So it’s like, pop only if you can. Try to long press on the `maybePop` menu item.',
          'If you press the button double pop will close this route and the drawer'
        ],
        button: RaisedButton(
          child: Text('Call maybePop 2 times'),
          onPressed: () async {
            await Navigator.maybePop(context);
            await Navigator.maybePop(context);
          },
        ),
      ),
    );
  }
}
