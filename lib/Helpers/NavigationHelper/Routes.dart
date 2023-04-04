// ignore_for_file: constant_identifier_names, unused_import

import 'package:eventapp/Pages/AboutScreen/AboutScreen.dart';
import 'package:eventapp/Pages/HomeScreen/HomeScreen.dart';

import 'NavigationHelper.dart';

// Declare a enum named Routes and assign the constant values
enum Routes { HomeScreen, AboutScreen }

class Pages {
  Object? data;

  // Create a PageConfig for homeScreenConfig

  static final PageConfig homeScreenConfig =
      PageConfig(route: Routes.HomeScreen, build: (context) => HomeScreen());

  // Create a PageConfig for aboutScreenConfig

  static final PageConfig aboutScreenConfig = PageConfig(
    route: Routes.AboutScreen,
    build: (context) => AboutScreen(value: aboutScreenConfig.data),
  );
}
