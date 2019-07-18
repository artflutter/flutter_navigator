import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class RemoveRouteBelow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Remove route below',
      button: Description(
        title: 'removeRouteBelow',
        description: <String>[
          '',
        ],
        button: RaisedButton(
          child: Text('Remove route below the current route'),
          onPressed: () =>
              Navigator.removeRouteBelow(context, ModalRoute.of(context)),
        ),
      ),
    );
  }
}
