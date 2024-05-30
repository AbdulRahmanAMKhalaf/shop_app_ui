import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/presentation/controller/navigation_bloc.dart';
import 'package:shop_app_ui/presentation/screen/home_screen/home_screen_view.dart';
import 'package:shop_app_ui/presentation/screen/map_screen/map_screen_view.dart';
import 'package:shop_app_ui/presentation/screen/splash_screen/splash_Screen_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return  const MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            home: SplashScreenView(),
          );
        },
      ),
    );
  }
}