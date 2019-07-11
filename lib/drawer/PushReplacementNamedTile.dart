import 'package:flutter/material.dart';

class PushReplacementNamedTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('pushReplacementNamed'),
      onTap: () {
        Navigator.pushNamed(context, '/pushReplacementNamed');
      },
    );
  }
}
