// ignore_for_file: must_be_immutable

part of 'personal_page_one_bloc.dart';

@immutable
abstract class PersonalPageOneEvent extends Equatable {}

class PersonalPageOneInitialEvent extends PersonalPageOneEvent {
  @override
  List<Object?> get props => [];
}
