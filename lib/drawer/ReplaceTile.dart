import 'package:flutter/material.dart';

class ReplaceTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('popUntil'),
      onTap: () {
        Navigator.pushNamed(context, '/popUntil');
      },
    );
  }
}
