import 'package:flutter/material.dart';

class TabBottomNavigationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Tab bottom navigation'),
      onTap: () {
        Navigator.pushNamed(context, '/tabBottom');
      },
    );
  }
}
