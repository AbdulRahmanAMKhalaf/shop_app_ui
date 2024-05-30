import 'package:flutter/material.dart';
import 'package:shop_app_ui/presentation/screen/map_screen/map_screen_content.dart';

class MapScreenView extends StatelessWidget {
  const MapScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MapScreenContent(),
    );
  }
}
