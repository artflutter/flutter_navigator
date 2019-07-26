import 'package:flutter/material.dart';

class AnimationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Animation'),
      onTap: () {
        Navigator.pushNamed(context, '/animation');
      },
    );
  }
}
