// ignore_for_file: must_be_immutable

part of 'student_dashboard_bloc.dart';

@immutable
abstract class StudentDashboardEvent extends Equatable {}

class StudentDashboardInitialEvent extends StudentDashboardEvent {
  @override
  List<Object?> get props => [];
}
