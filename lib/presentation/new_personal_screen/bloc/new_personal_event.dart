// ignore_for_file: must_be_immutable

part of 'new_personal_bloc.dart';

@immutable
abstract class NewPersonalEvent extends Equatable {}

class NewPersonalInitialEvent extends NewPersonalEvent {
  @override
  List<Object?> get props => [];
}
