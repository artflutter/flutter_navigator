import 'package:flutter/material.dart';

class PopUntilTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+++popUntil'),
      onTap: () {
        Navigator.pushNamed(context, '/popUntil');
      },
    );
  }
}
