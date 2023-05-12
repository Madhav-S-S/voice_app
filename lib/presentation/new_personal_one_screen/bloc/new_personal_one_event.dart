// ignore_for_file: must_be_immutable

part of 'new_personal_one_bloc.dart';

@immutable
abstract class NewPersonalOneEvent extends Equatable {}

class NewPersonalOneInitialEvent extends NewPersonalOneEvent {
  @override
  List<Object?> get props => [];
}
