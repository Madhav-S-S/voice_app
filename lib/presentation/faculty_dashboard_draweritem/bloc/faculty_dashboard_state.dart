// ignore_for_file: must_be_immutable

part of 'faculty_dashboard_bloc.dart';

class FacultyDashboardState extends Equatable {
  FacultyDashboardState({this.facultyDashboardModelObj});

  FacultyDashboardModel? facultyDashboardModelObj;

  @override
  List<Object?> get props => [
        facultyDashboardModelObj,
      ];
  FacultyDashboardState copyWith(
      {FacultyDashboardModel? facultyDashboardModelObj}) {
    return FacultyDashboardState(
      facultyDashboardModelObj:
          facultyDashboardModelObj ?? this.facultyDashboardModelObj,
    );
  }
}
