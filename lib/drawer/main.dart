import 'package:flutter/material.dart';

import 'AnimationTile.dart';
import 'CanPopTile.dart';
import 'Header.dart';
import 'HeroAnimationTile.dart';
import 'MayBePopTile.dart';
import 'ModalTile.dart';
import 'NestedTile.dart';
import 'ObserversTile.dart';
import 'OnGenerateRouteTile.dart';
import 'OnUnknownRouteTile.dart';
import 'PopAndPushNamedTile.dart';
import 'PopTile.dart';
import 'PopUntilTile.dart';
import 'PropertiesTile.dart';
import 'PushAndRemoveUntilTile.dart';
import 'PushReplacement.dart';
import 'PushTile.dart';
import 'RemoveRouteBelowTile.dart';
import 'RemoveRouteTile.dart';
import 'ReplaceRouteBelowTile.dart';
import 'ReplaceTile.dart';
import 'SamplesTile.dart';
import 'SendAndReturnTile.dart';
import 'StaticTile.dart';
//import 'TodoTile.dart';

List<Widget> drawerContent() {
  return <Widget>[
    Header(),
    SamplesTile(),
    HeroAnimationTile(),
    SendAndReturnTile(),
    AnimationTile(),
    ModalTile(),
    NestedTile(),
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
    PushReplacement(),
//    PushReplacementNamedTile(),
    RemoveRouteTile(),
    RemoveRouteBelowTile(),
    ReplaceTile(),
    ReplaceRouteBelowTile(),
  ];
}
