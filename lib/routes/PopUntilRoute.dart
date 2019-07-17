import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class PopUntilRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Pop until',
      button: Description(
        title: 'popUntil',
        description: <String>[
          'Calls pop repeatedly on the navigator until the predicate returns true.',
          'Imagine you are building a Google Forms like application or an app that lets you fill and organize Google forms. Now some user might have to fill a long 3-part form, which might be displayed in 3 sequential screens in a mobile application. Now on the 3rd part of the form, user decides to cancel filling the form. User clicks on Cancel and all the previous form related screens should be popped and user should be taken back to the HomeScreen or DashboardScreen thereby losing all the form related data (which is what we want in such cases). We won’t be pushing anything new here, just going back to a previous route.',
          'Pressing the button will pop all the items from the stack(including drawer) until the `/` route'
        ],
        button: RaisedButton(
          child: Text('Press to execute popUntil'),
          onPressed: () => Navigator.popUntil(
            context,
            ModalRoute.withName('/'),
          ),
        ),
      ),
    );
  }
}
