import 'package:flutter/material.dart';

class MayBePopTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('+++maybePop'),
      onTap: () {
        Navigator.popAndPushNamed(context, '/maybePop');
      },
      onLongPress: () async {
        Scaffold.of(context)
          ..removeCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                  "MaybePop triggered 2 times but only one pop of Dreawer occured"),
            ),
          );
        await Navigator.maybePop(context);
        await Navigator.maybePop(context);
      },
    );
  }
}
