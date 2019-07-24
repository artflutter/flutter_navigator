import 'package:flutter/material.dart';

import '../Description.dart';
import 'ReplacementRoute.dart';
import 'SampleRouteItem.dart';

class ReplaceRouteBelow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Replace route below',
      button: Description(
        title: 'replaceRouteBelow',
        description: <String>[
          '',
        ],
        button: RaisedButton(
          child: Text('Move forward'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SampleRouteItem(
                  title: 'Replace route below',
                  button: Description(
                    title: 'replaceRouteBelow',
                    description: <String>[
                      '',
                    ],
                    button: RaisedButton(
                      child: Text('Replace route below current'),
                      onPressed: () {
                        Navigator.replaceRouteBelow(
                          context,
                          anchorRoute: ModalRoute.of(context),
                          newRoute: MaterialPageRoute(
                            builder: (context) => ReplacementRoute(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
