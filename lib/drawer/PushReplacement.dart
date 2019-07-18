import 'package:flutter/material.dart';

class PushReplacement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('---pushReplacement[Named]'),
      onTap: () {
        Navigator.pushNamed(context, '/pushReplacement');
      },
    );
  }
}
