import 'package:flutter/material.dart';
import 'package:shop_app_ui/presentation/screen/splash_screen/splash_screen_content.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenContent(),
    );
  }
}
