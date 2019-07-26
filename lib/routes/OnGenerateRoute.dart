import 'package:flutter/material.dart';

import '../Description.dart';
import 'SampleRouteItem.dart';

class OnGenerateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleRouteItem(
      title: 'On generate rout',
      button: Description(
        title: 'onGenerateRoute',
        description: <String>[
          'The route generator callback used when the app is navigated to a named route. This is used if routes does not contain the requested route. You can build the whole navigation using this route or use it in conjuction with static routes defintion.',
          'In this sample we will use it to add the alternative routing library called Fluro',
          'Navigation with `Wildcard parameter matching` - /fluro/YourParam/YourMessage(/fluro/:id/:message)',
          'Navigation with `Querystring parameter parsing` /fluro/YourParam?message=YourMessage(/fluro/:id)'
        ],

        //            Navigator.pushNamed(context, '/canPop/123?message=thisIsMessage');
//        Navigator.pushNamed(context, '/canPop/123/const/messageFromConst');
        button: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
                child: Text('Wildcard parameter matching'),
                onPressed: () async {
                  Navigator.pushNamed(context, '/fluro/pathStyle/HelloAgain');
                }),
            RaisedButton(
                child: Text('Querystring parameter parsing'),
                onPressed: () async {
                  Navigator.pushNamed(
                      context, '/fluro/GetStyleParams?message=Hello');
                }),
          ],
        ),
      ),
    );
  }
}
