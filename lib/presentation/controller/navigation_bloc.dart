import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitialState()) {
    on<ChangeNavEvent>(_changeNavEvent);
  }

  int index=0;

   FutureOr<void> _changeNavEvent(ChangeNavEvent event, Emitter<NavigationState> emit){
    index=event.index;
    emit(NavigationSuccessfullyState());
  }
}
