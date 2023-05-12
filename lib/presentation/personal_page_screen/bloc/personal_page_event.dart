// ignore_for_file: must_be_immutable

part of 'personal_page_bloc.dart';

@immutable
abstract class PersonalPageEvent extends Equatable {}

class PersonalPageInitialEvent extends PersonalPageEvent {
  @override
  List<Object?> get props => [];
}
