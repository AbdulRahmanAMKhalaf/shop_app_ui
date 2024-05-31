import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_ui/cores/bloc_observer/bloc_observer.dart';

import 'app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}


