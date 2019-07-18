import 'package:flutter/material.dart';

import 'CanPopTile.dart';
import 'Header.dart';
import 'MayBePopTile.dart';
import 'ObserversTile.dart';
import 'OnGenerateRouteTile.dart';
import 'OnUnknownRouteTile.dart';
import 'PopAndPushNamedTile.dart';
import 'PopTile.dart';
import 'PopUntilTile.dart';
import 'PropertiesTile.dart';
import 'PushAndRemoveUntilTile.dart';
import 'PushNamedAndRemoveUntilTile.dart';
import 'PushReplacement.dart';
import 'PushReplacementNamedTile.dart';
import 'PushTile.dart';
import 'RemoveRouteBelowTile.dart';
import 'RemoveRouteTile.dart';
import 'ReplaceRouteBelowTile.dart';
import 'ReplaceTile.dart';
import 'StaticTile.dart';
//import 'TodoTile.dart';

List<Widget> drawerContent() {
  return <Widget>[
    Header(),
//    SamplesTile(),
//    TodoTile(),
    PropertiesTile(),
    ObserversTile(),
    OnGenerateRouteTile(),
    OnUnknownRouteTile(),
    StaticTile(),
    CanPopTile(),
    MayBePopTile(),
    PopTile(),
    PopAndPushNamedTile(),
    PopUntilTile(),
    PushTile(),
    PushAndRemoveUntilTile(),
    //PushNamed(),
    PushNamedAndRemoveUntilTile(),
    PushReplacement(),
    PushReplacementNamedTile(),
    RemoveRouteTile(),
    RemoveRouteBelowTile(),
    ReplaceTile(),
    ReplaceRouteBelowTile(),
  ];
}
