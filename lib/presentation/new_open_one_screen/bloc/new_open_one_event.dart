// ignore_for_file: must_be_immutable

part of 'new_open_one_bloc.dart';

@immutable
abstract class NewOpenOneEvent extends Equatable {}

class NewOpenOneInitialEvent extends NewOpenOneEvent {
  @override
  List<Object?> get props => [];
}
