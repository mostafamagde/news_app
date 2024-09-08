import 'package:flutter/material.dart';



import '../../features/layout/pages/layout_view.dart';
import '../../features/splash/pages/splash.dart';
import 'Page_Routes.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutes.initial:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
          settings: settings,
        );

      case PageRoutes.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
          settings: settings,
        );
    }
  }
}
