import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/PushNamedRoute.dart';

class PushTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('push[Named]'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PushNamedRoute(),
          ),
        );
      },
    );
  }
}
