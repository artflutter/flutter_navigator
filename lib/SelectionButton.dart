import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick option!'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/return');

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}
