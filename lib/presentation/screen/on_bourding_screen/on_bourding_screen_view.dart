import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop_app_ui/presentation/screen/on_bourding_screen/on_bourding_screen_content.dart';

class OnBourdingScreenView extends StatelessWidget {
  const OnBourdingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor('#f8f8fa'),
      body: const SafeArea(child: OnBourdingScreenContent()),
    );
  }
}
