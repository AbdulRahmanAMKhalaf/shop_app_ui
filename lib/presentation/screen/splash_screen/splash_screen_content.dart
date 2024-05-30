import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app_ui/presentation/screen/on_bourding_screen/on_bourding_screen_view.dart';
import 'package:shop_app_ui/presentation/screen/splash_screen/widget/container_child.dart';

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBourdingScreenView(),
          ),
              (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlueAccent.shade400,
            Colors.yellowAccent.shade200
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const ContainerChild(),
    );
  }
}
