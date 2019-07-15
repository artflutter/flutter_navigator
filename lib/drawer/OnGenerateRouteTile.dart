import 'package:flutter/material.dart';

class OnGenerateRouteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('onGenerateRoute'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/onGenerateRoute');
      },
    );
  }
}
