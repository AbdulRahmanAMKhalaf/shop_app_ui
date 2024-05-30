import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitialState()) {
    on<ChangeNavEvent>(_changeNavEvent);
  }
  static int index=0;
  static bloc(context){
    return BlocProvider.of(context);
  }
  void changeNav(int number){
    index=number;
  }
   FutureOr<void> _changeNavEvent(ChangeNavEvent event, Emitter<NavigationState> emit) {
    changeNav(index);
    emit(NavigationSuccessfullyState());
  }
}
