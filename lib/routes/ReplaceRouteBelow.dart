import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class ReplaceRouteBelow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Replace route below',
      button: RaisedButton(
        child: Text('Replcae current route'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SampleRouteItem(
                title: 'Replace route below',
                button: RaisedButton(
                  child: Text('Replace route below current'),
                  onPressed: () {
                    Navigator.replaceRouteBelow(
                      context,
                      anchorRoute: ModalRoute.of(context),
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
              ),
            ),
          );
        },
      ),
    );
  }
}
