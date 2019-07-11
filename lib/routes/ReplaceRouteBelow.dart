import 'package:flutter/material.dart';

import 'SampleRouteItem.dart';

class ReplaceRouteBelow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Replace route below',
      buttonTitle: 'Replcae current route',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SampleRouteItem(
              title: 'Replace route below',
              buttonTitle: 'Replace route below current',
              onPressed: () {
                Navigator.replaceRouteBelow(
                  context,
                  anchorRoute: ModalRoute.of(context),
                  newRoute: MaterialPageRoute(
                    builder: (context) => SampleRouteItem(
                      title: 'This route is a replacment',
                      buttonTitle: 'Press to go back',
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
