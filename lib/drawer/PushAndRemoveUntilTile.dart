import 'package:flutter/material.dart';

class PushAndRemoveUntilTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+push[Named]AndRemoveUntil'),
      onTap: () {
        Navigator.pushNamed(context, '/pushAndRemoveUntil');
      },
    );
  }
}
