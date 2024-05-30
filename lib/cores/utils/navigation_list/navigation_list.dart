import 'package:flutter/material.dart';
import 'package:shop_app_ui/presentation/screen/home_screen/home_screen_view.dart';
import 'package:shop_app_ui/presentation/screen/map_screen/map_screen_view.dart';

List<BottomNavigationBarItem>navList=[
  const BottomNavigationBarItem(
      icon:Icon(Icons.home_outlined),
    label: 'Home'
  ),
  const BottomNavigationBarItem(
      icon: Icon(Icons.map),
    label: 'Map'
  )
];
List<Widget>screens=[
  const HomeScreenView(),
  const MapScreenView(),
];