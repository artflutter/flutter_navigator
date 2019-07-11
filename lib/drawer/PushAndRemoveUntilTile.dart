import 'package:flutter/material.dart';

class PushAndRemoveUntilTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('pushAndRemoveUntil'),
      onTap: () {
        Navigator.pushNamed(context, '/pushAndRemoveUntil');
      },
    );
  }
}
