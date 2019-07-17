import 'package:flutter/material.dart';

class CanPopTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+++canPop'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/canPop');
      },
    );
  }
}
