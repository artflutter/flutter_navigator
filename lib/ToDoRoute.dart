import 'package:flutter/material.dart';

import 'package:flutter_routing/ToDo.dart';
import 'package:flutter_routing/ToDoDetailsRoute.dart';

class ToDoRoute extends StatelessWidget {
  final List<Todo> todos;

  ToDoRoute({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ToDoDetailsRoute(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
