// ignore_for_file: must_be_immutable

part of 'student_home_bloc.dart';

@immutable
abstract class StudentHomeEvent extends Equatable {}

class StudentHomeInitialEvent extends StudentHomeEvent {
  @override
  List<Object?> get props => [];
}
