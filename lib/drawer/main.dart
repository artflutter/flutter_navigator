import 'package:flutter/material.dart';

import 'CanPopTile.dart';
import 'Header.dart';
import 'MayBePopTile.dart';
import 'PopAndPushNamedTile.dart';
import 'PopTile.dart';
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
import 'ReplaceTile.dart';
import 'TodoTile.dart';

List<Widget> drawerContent() {
  return <Widget>[
    Header(),
    RemoveRouteBelowTile(),
    MayBePopTile(),
    CanPopTile(),
    PopTile(),
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
    ReplaceTile(),
    PopAndPushNamedTile(),
    TodoTile()
  ];
}
