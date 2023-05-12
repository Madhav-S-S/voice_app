// ignore_for_file: must_be_immutable

part of 'faculty_home_bloc.dart';

@immutable
abstract class FacultyHomeEvent extends Equatable {}

class FacultyHomeInitialEvent extends FacultyHomeEvent {
  @override
  List<Object?> get props => [];
}
