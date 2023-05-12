// ignore_for_file: must_be_immutable

part of 'new_general_one_bloc.dart';

@immutable
abstract class NewGeneralOneEvent extends Equatable {}

class NewGeneralOneInitialEvent extends NewGeneralOneEvent {
  @override
  List<Object?> get props => [];
}
