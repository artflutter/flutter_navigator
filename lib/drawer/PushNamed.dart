import 'package:flutter/material.dart';

class PushNamed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Push named route'),
      onTap: () {
        Navigator.pushNamed(context, '/pushNamed');
      },
    );
  }
}
