import 'package:flutter/material.dart';

class NotFoundRouteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Not found route'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/notFoundRoute');
      },
    );
  }
}
