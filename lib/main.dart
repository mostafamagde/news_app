import 'package:flutter/material.dart';

import 'core/config/Page_Routes.dart';
import 'core/config/Route_Generator.dart';
import 'core/network/api_manager.dart';
import 'core/theme/app_theme_manager.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      onGenerateRoute: RouteGenerator.generate,
      initialRoute: PageRoutes.initial,
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lightTheme,

    );
  }
}


