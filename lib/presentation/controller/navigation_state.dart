part of 'navigation_bloc.dart';

abstract class NavigationState {}

final class NavigationInitialState extends NavigationState {}
final class NavigationSuccessfullyState extends NavigationState {}
final class NavigationErrorState extends NavigationState {}