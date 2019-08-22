import 'package:flutter/material.dart';

class TabTopNavigationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Tab top navigation'),
      onTap: () {
        Navigator.pushNamed(context, '/tabTop');
      },
    );
  }
}
