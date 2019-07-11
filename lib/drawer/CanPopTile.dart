import 'package:flutter/material.dart';

class CanPopTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('canPop'),
      onTap: () {
        final navigator = Navigator.of(context);
        final scaffold = Scaffold.of(context);

        if (navigator.canPop()) {
          navigator.pop();

          scaffold
            ..showSnackBar(
              SnackBar(
                content: Text("Just poped the drawer"),
                action: SnackBarAction(
                  label: 'Pop more',
                  onPressed: () {
                    if (!navigator.canPop()) {
                      scaffold
                        ..showSnackBar(
                          SnackBar(
                            content: Text("There is nothing to pop"),
                          ),
                        );
                    }
                  },
                ),
              ),
            );
        }
      },
    );
  }
}
