import 'package:flutter/material.dart';

import 'HeroDetailRoute.dart';

class HeroAnimatedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero route'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return HeroDetailRoute();
          }));
        },
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'imageHero',
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                  ),
                ),
              ],
            ),
            Text('Click to zoom')
          ],
        ),
      ),
    );
  }
}
