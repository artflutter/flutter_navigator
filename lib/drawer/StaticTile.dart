import 'package:flutter/material.dart';

class StaticTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'STATIC METHODS',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
