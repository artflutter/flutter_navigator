/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/routes/SampleRouteItem.dart';

import '../Description.dart';

final fluroRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String message = params["message"]?.first;
  String id = params["id"]?.first;

  return SampleRouteItem(
    title: 'Fluro routing',
    child: Description(
      title: 'Route id - $id',
      description: [message],
      button: null,
    ),
  );
});

class Routes {
  static String route = "/fluro/:id/:message";
  static String routeGet = "/fluro/:id";

  static void configureRoutes(Router router) {
    router.define(route, handler: fluroRouteHandler);
    router.define(routeGet, handler: fluroRouteHandler);
  }
}
