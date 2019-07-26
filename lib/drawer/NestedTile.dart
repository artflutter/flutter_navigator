import 'package:flutter/material.dart';

class NestedTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Nested navigation'),
      onTap: () {
        Navigator.pushNamed(context, '/nested');
      },
    );
  }
}
