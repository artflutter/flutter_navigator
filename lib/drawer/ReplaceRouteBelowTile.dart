import 'package:flutter/material.dart';

class ReplaceRouteBelowTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('replaceRouteBelow'),
      onTap: () {
        Navigator.pushNamed(context, '/replaceRouteBelow');
      },
    );
  }
}
