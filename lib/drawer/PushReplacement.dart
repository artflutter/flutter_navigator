import 'package:flutter/material.dart';

class PushReplacement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('pushReplacement'),
      onTap: () {
        Navigator.pushNamed(context, '/pushReplacement');
      },
    );
  }
}
