import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class PushReplacementRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Push replacement [named]',
      button: Description(
        title: 'pushReplacemnt[Named]',
        description: <String>[
          '',
        ],
        button: RaisedButton(
          child: Text('Replace current route'),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SampleRouteItem(
                title: 'Replaced route',
                button: Description(
                  title: 'Replaced route',
                  description: <String>[
                    '',
                  ],
                  button: null,
                ),
              ),
              //),
            ),
          ),
        ),
      ),
    );
  }
}
