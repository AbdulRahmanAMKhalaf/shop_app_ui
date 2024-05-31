import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_ui/cores/utils/navigation_list/navigation_list.dart';
import 'package:shop_app_ui/presentation/controller/navigation_bloc.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<NavigationBloc>();
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: navList,
            currentIndex: bloc.index,
            onTap: (value) {
              bloc.add(ChangeNavEvent(index: value));
            },
          ),
          body: screens[bloc.index],
        );
      },
    );
  }
}
