import 'package:flutter/material.dart';

class PopAndPushNamedTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+popAndPushNamed'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/popAndPushNamed');
      },
    );
  }
}
