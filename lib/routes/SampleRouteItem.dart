import 'package:flutter/material.dart';

class SampleRouteItem extends StatelessWidget {
  final String title;

  final Widget child;

  SampleRouteItem({Key key, @required this.title, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: this.child);
  }
}
