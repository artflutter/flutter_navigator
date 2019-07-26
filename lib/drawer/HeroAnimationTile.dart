import 'package:flutter/material.dart';

class HeroAnimationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Hero animation'),
      onTap: () {
        Navigator.pushNamed(context, '/hero');
      },
    );
  }
}
