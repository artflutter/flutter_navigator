import 'package:flutter/material.dart';

import 'package:flutter_routing/ToDo.dart';
import 'package:flutter_routing/ToDoDetailsRoute.dart';

class ToDoRoute extends StatelessWidget {
  final List<Todo> todos = List.generate(
    20,
    (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

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
