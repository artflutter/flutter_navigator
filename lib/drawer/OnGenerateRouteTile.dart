import 'package:flutter/material.dart';

class OnGenerateRouteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('onGenerateRoute[Fluro]'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/onGenerateRoute');
      },
    );
  }
}
