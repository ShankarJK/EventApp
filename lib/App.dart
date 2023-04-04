import 'package:eventapp/Helpers/NavigationHelper/Routes.dart';
import 'package:eventapp/Pages/AboutScreen/AboutScreen.dart';
import 'package:eventapp/Pages/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Helpers/NavigationHelper/NavigationHelper.dart';
// Create a statelessWidget for Myapp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Assign the value of constructor AppRoute and pass the value to parameter
      onGenerateRoute:
          AppRoute(initialPage: Pages.homeScreenConfig, initialPageData: null)
              .onGenerateRoute,
    );
  }
}
