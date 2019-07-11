import 'package:flutter/material.dart';

class SampleRouteItem extends StatelessWidget {
  final String title;

  final String buttonTitle;

  final VoidCallback onPressed;

  SampleRouteItem(
      {Key key,
      @required this.title,
      @required this.onPressed,
      @required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: RaisedButton(
            child: Text(this.buttonTitle), onPressed: this.onPressed),
      ),
    );
  }
}
