import 'package:flutter/material.dart';
import 'package:flutter_routing/ToDo.dart';

import 'SampleRouteItem.dart';
import 'ToDoDetailsRoute.dart';

class ToDoRoute extends StatelessWidget {
  final List<Todo> todos = List.generate(
    10,
    (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Todos',
      child: ListView.builder(
//            shrinkWrap: true,
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ToDoDetailsRoute(todo: todos[index]),
                ),
              );

              Scaffold.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text("You choose '$result'"),
                  ),
                );
            },
          );
        },
      ),
    );
  }
}
