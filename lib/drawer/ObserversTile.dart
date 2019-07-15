import 'package:flutter/material.dart';

class ObserversTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('observers'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/observers');
      },
    );
  }
}
