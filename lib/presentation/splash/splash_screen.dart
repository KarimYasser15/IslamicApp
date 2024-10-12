import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/assets_manager.dart';
import 'package:islamic_app/core/utils/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () => Navigator.pushReplacementNamed(context, RoutesManager.homeRoute));
    return Scaffold(
      body: Image.asset(
          AssetsManager.lightSplashScreen,
          height: double.infinity,
          fit: BoxFit.fitHeight),
    );
  }
}
