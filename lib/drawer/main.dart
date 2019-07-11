import 'package:flutter/material.dart';
import 'package:flutter_routing/drawer/Header.dart';
import 'package:flutter_routing/drawer/RemoveRouteBelowTile.dart';

List<Widget> drawerContent() {
  return <Widget>[Header(), RemoveRouteBelowTile()];
}
