// ignore_for_file: must_be_immutable

part of 'faculty_login_bloc.dart';

@immutable
abstract class FacultyLoginEvent extends Equatable {}

class FacultyLoginInitialEvent extends FacultyLoginEvent {
  @override
  List<Object?> get props => [];
}
