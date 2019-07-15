import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Todo'),
      onTap: () {
        Navigator.pushNamed(context, '/todo');
      },
    );
  }
}
