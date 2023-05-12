// ignore_for_file: must_be_immutable

part of 'app_navigation_bloc.dart';

@immutable
abstract class AppNavigationEvent extends Equatable {}

class AppNavigationInitialEvent extends AppNavigationEvent {
  @override
  List<Object?> get props => [];
}
