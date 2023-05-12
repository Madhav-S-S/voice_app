// ignore_for_file: must_be_immutable

part of 'new_general_bloc.dart';

@immutable
abstract class NewGeneralEvent extends Equatable {}

class NewGeneralInitialEvent extends NewGeneralEvent {
  @override
  List<Object?> get props => [];
}
