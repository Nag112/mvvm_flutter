import 'package:flutter/material.dart' hide Router;
import 'package:mvvm_example/app/locator.dart';
import 'package:mvvm_example/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Routes.startupView,
      onGenerateRoute: Router(),
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
