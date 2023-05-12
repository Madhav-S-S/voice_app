// ignore_for_file: must_be_immutable

part of 'new_open_bloc.dart';

@immutable
abstract class NewOpenEvent extends Equatable {}

class NewOpenInitialEvent extends NewOpenEvent {
  @override
  List<Object?> get props => [];
}
