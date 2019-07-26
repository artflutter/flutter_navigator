import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class OnGenerateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'On generate rout',
      button: Description(
        title: 'onGenerateRoute',
        description: <String>[
          '',
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
