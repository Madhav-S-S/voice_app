// ignore_for_file: must_be_immutable

part of 'splash_bloc.dart';

@immutable
abstract class SplashEvent extends Equatable {}

class SplashInitialEvent extends SplashEvent {
  @override
  List<Object?> get props => [];
}
