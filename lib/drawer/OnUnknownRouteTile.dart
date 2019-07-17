import 'package:flutter/material.dart';

class OnUnknownRouteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+onUnknownRoute'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/notFoundRoute');
      },
    );
  }
}
