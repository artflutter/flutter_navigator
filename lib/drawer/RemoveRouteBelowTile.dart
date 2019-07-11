import 'package:flutter/material.dart';

class RemoveRouteBelowTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('removeRouteBelow'),
      onTap: () => Navigator.pushNamed(context, '/removeRouteBelow'),
    );
  }
}
