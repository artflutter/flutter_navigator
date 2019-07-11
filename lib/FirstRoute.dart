import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));

            //ModalRoute.withName('/')
            //Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
