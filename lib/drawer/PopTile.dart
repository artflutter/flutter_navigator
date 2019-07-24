import 'package:flutter/material.dart';

class PopTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('pop'),
      onTap: () {
        Navigator.pop(context);
        Scaffold.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text("Just poped the drawer"),
            ),
          );
      },
    );
  }
}
