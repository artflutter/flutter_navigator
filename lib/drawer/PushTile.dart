import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/SampleRouteItem.dart';

class PushTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('push'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SampleRouteItem(
              title: 'Push',
              button: RaisedButton(
                child: Text('Press to go back'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        );
      },
    );
  }
}
