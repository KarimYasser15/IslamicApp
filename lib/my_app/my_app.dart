import 'package:flutter/material.dart';
import 'package:islamic_app/config/theme/my_theme.dart';
import 'package:islamic_app/core/utils/routes_manager.dart';

import '../presentation/home/home_screen.dart';
import '../presentation/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesManager.splashRoute,
      theme: MyTheme.lightTheme,
      routes: {
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.homeRoute: (_)=> HomeScreen(),
      },
    );
  }
}
