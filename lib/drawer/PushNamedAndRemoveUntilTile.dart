import 'package:flutter/material.dart';

class PushNamedAndRemoveUntilTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('pushNamedAndRemoveUntil'),
      onTap: () {
        Navigator.pushNamed(context, '/pushNamedAndRemoveUntil');
      },
    );
  }
}
