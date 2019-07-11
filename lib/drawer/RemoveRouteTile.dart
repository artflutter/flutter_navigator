import 'package:flutter/material.dart';

class RemoveRouteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('removeRoute'),
      onTap: () => Navigator.pushNamed(context, '/removeRoute'),
    );
  }
}
