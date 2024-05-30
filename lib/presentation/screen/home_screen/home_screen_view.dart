import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop_app_ui/presentation/screen/home_screen/home_screen_content.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: HexColor('#f8f8fa'),
      body: const SafeArea(child: HomeScreenContent()),
    );
  }
}
