import 'package:flutter/material.dart';
import 'package:flutter_routing/Description.dart';
import 'package:flutter_routing/ToDo.dart';

class ToDoDetailsRoute extends StatelessWidget {
  final Todo todo;

  ToDoDetailsRoute({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Description(
          title: 'Todo item',
          description: [todo.description, 'Are you finished with this?'],
          button: Row(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 15,
                child: RaisedButton(
                  child: Text('Nope('),
                  onPressed: () => Navigator.pop(context, 'Nope'),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 15,
                child: RaisedButton(
                  child: Text('Yep!'),
                  onPressed: () => Navigator.pop(context, 'Yep!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
