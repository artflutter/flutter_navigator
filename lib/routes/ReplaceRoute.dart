import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class ReplaceRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final replaceRoute = ModalRoute.of(context);

    return SampleRouteItem(
      title: 'Replace route',
      button: RaisedButton(
        child: Text('Replcae current route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SampleRouteItem(
                  title: 'Replace route',
                  button: RaisedButton(
                    child: Text('Replcae current route'),
                    onPressed: () {
                      Navigator.replace(
                        context,
                        oldRoute: replaceRoute,
                        newRoute: MaterialPageRoute(
                          builder: (context) => SampleRouteItem(
                            title: 'This route is a replacment',
                            button: RaisedButton(
                              child: Text('Press to go back'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
