import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  ToggleButton(
      {Key key,
      @required this.onPressed,
      @required this.child,
      this.replacement})
      : super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final Widget replacement;

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return _toggle
        ? widget.replacement
        : RaisedButton(
            child: widget.child,
            onPressed: () {
              widget.onPressed();
              setState(() {
                _toggle = true;
              });
            },
          );
  }
}
