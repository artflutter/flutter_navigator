/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart';

import './route_handlers.dart';

class Routes {
  static String root = "/fluro";
  static String demoSimple = "/canPop/:id?message=thisIsMessage";
  static String demoSimpleSecond = "/canPop/:id/:message";
  static String demoSimpleThird = "/canPop/:id/const/:message";
//  static String demoSimpleFixedTrans = "/demo/fixedtrans";
//  static String demoFunc = "/demo/func";
//  static String deepLink = "/message";

  static void configureRoutes(Router router) {
//    router.notFoundHandler = Handler(
//        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//      print("ROUTE WAS NOT FOUND !!!");
//    });
    router.define(root, handler: rootHandler);
    router.define(demoSimple, handler: demoRouteHandler);
    router.define(demoSimpleSecond, handler: demoRouteHandler);
    router.define(demoSimpleThird, handler: demoRouteHandler);
//    router.define(demoSimpleFixedTrans,
//        handler: demoRouteHandler, transitionType: TransitionType.inFromLeft);
//    router.define(demoFunc, handler: demoFunctionHandler);
//    router.define(deepLink, handler: deepLinkHandler);
  }
}
