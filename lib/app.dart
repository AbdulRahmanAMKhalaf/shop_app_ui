import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/presentation/screen/splash_screen/splash_Screen_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return  const MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: SplashScreenView(),
        );
      },
    );
  }
}