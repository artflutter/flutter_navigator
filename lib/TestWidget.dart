import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final SnackBar snackBar;

  TestWidget({Key key, @required this.snackBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(this.snackBar);

    return null;
  }
}
