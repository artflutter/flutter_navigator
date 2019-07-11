import 'package:flutter/material.dart';

import 'Header.dart';
import 'PopAndPushNamedTile.dart';
import 'PushNamed.dart';
import 'PushTile.dart';
import 'RemoveRouteBelowTile.dart';
import 'NotFoundRouteTile.dart';
import 'PopUntilTile.dart';
import 'PushAndRemoveUntilTile.dart';
import 'PushNamedAndRemoveUntilTile.dart';
import 'PushReplacement.dart';
import 'PushReplacementNamedTile.dart';
import 'RemoveRouteTile.dart';
import 'ReplaceRouteBelowTile.dart';

List<Widget> drawerContent() {
  return <Widget>[
    Header(),
    RemoveRouteBelowTile(),
    PopUntilTile(),
    RemoveRouteTile(),
    NotFoundRouteTile(),
    PushReplacementNamedTile(),
    PushNamedAndRemoveUntilTile(),
    PushAndRemoveUntilTile(),
    PushReplacement(),
    ReplaceRouteBelowTile(),
    PushNamed(),
    PushTile(),
    PopAndPushNamedTile()
  ];
}
