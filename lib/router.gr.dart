// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'ui/views/future_example/future_example_view.dart';
import 'ui/views/home/home.dart';
import 'ui/views/partial_builds/partial_builds_view.dart';
import 'ui/views/reactive/reactive_view.dart';
import 'ui/views/startup/startup.dart';

class Routes {
  static const String homeView = '/home-view';
  static const String partialBuildsView = '/partial-builds-view';
  static const String reactiveExampleView = '/reactive-example-view';
  static const String futureExampleView = '/future-example-view';
  static const String startupView = '/';
  static const all = <String>{
    homeView,
    partialBuildsView,
    reactiveExampleView,
    futureExampleView,
    startupView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.partialBuildsView, page: PartialBuildsView),
    RouteDef(Routes.reactiveExampleView, page: ReactiveExampleView),
    RouteDef(Routes.futureExampleView, page: FutureExampleView),
    RouteDef(Routes.startupView, page: StartupView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    PartialBuildsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PartialBuildsView(),
        settings: data,
      );
    },
    ReactiveExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ReactiveExampleView(),
        settings: data,
      );
    },
    FutureExampleView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FutureExampleView(),
        settings: data,
      );
    },
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
  };
}
