import 'package:flutter/material.dart';

class ReplaceTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('replace'),
      onTap: () {
        Navigator.pushNamed(context, '/replace');
      },
    );
  }
}
