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

  // A method that launches the SelectionScreen and awaits the
  // result from Navigator.pop.
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
//    final result = await Navigator.push(
//      context,
//      // Create the SelectionScreen in the next step.
//      MaterialPageRoute(builder: (context) => SelectionScreen()),
//    );

    final result = await Navigator.pushNamed(context, '/return');

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
    // Create the SelectionScreen in the next step.
    //MaterialPageRoute(builder: (context) => SelectionScreen()),
  }
}
