import 'package:flutter/material.dart';

class SendAndReturnTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Send & return data'),
      onTap: () async {
        Navigator.popAndPushNamed(context, '/send');
      },
    );
  }
}
