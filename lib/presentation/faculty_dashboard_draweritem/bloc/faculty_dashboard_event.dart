// ignore_for_file: must_be_immutable

part of 'faculty_dashboard_bloc.dart';

@immutable
abstract class FacultyDashboardEvent extends Equatable {}

class FacultyDashboardInitialEvent extends FacultyDashboardEvent {
  @override
  List<Object?> get props => [];
}
