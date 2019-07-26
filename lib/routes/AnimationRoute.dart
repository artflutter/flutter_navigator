import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';
import 'animation/DoubleSlideRoute.dart';
import 'animation/FadeRoute.dart';
import 'animation/RotationRoute.dart';
import 'animation/ScaleRotateRoute.dart';
import 'animation/SizeRoute.dart';
import 'animation/SlideRightRoute.dart';

class AnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'Animation',
      button: Description(
        title: 'Animation',
        description: <String>[
          'Simple animaiton transitions',
        ],
        button: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
                child: Text('Slide from the right'),
                onPressed: () => Navigator.push(
                    context,
                    SlideRightRoute(
                        page: SampleRouteItem(
                            title: 'Animaiton',
                            button: Description(
                                title: 'Animaiton',
                                description: ['Slided right'],
                                button: null))))),
            RaisedButton(
                child: Text('Double slide'),
                onPressed: () => Navigator.push(
                    context,
                    DoubleSlideRoute(
                        exitPage: this,
                        enterPage: SampleRouteItem(
                            title: 'Animaiton',
                            button: Description(
                                title: 'Animaiton',
                                description: ['Double slided'],
                                button: null))))),
            RaisedButton(
                child: Text('Fade transition'),
                onPressed: () => Navigator.push(
                    context,
                    FadeRoute(
                        page: SampleRouteItem(
                            title: 'Animaiton',
                            button: Description(
                                title: 'Animaiton',
                                description: ['Fade transition'],
                                button: null))))),
            RaisedButton(
                child: Text('Rotation route'),
                onPressed: () => Navigator.push(
                    context,
                    RotationRoute(
                        page: SampleRouteItem(
                            title: 'Animaiton',
                            button: Description(
                                title: 'Animaiton',
                                description: ['Rotation route'],
                                button: null))))),
            RaisedButton(
                child: Text('Scale and rotate'),
                onPressed: () => Navigator.push(
                    context,
                    ScaleRotateRoute(
                        page: SampleRouteItem(
                            title: 'Animaiton',
                            button: Description(
                                title: 'Animaiton',
                                description: ['Scale and rotate'],
                                button: null))))),
            RaisedButton(
                child: Text('Sized'),
                onPressed: () => Navigator.push(
                    context,
                    SizeRoute(
                        page: SampleRouteItem(
                            title: 'Animaiton',
                            button: Description(
                                title: 'Animaiton',
                                description: ['Sized route'],
                                button: null)))))
          ],
        ),
      ),
    );
  }
}
