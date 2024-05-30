part of 'navigation_bloc.dart';


abstract class NavigationEvent {}
final class ChangeNavEvent extends NavigationEvent{
  int index;

  ChangeNavEvent({required this.index});
}