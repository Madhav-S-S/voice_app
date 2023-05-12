// ignore_for_file: must_be_immutable

part of 'student_dashboard_bloc.dart';

class StudentDashboardState extends Equatable {
  StudentDashboardState({this.studentDashboardModelObj});

  StudentDashboardModel? studentDashboardModelObj;

  @override
  List<Object?> get props => [
        studentDashboardModelObj,
      ];
  StudentDashboardState copyWith(
      {StudentDashboardModel? studentDashboardModelObj}) {
    return StudentDashboardState(
      studentDashboardModelObj:
          studentDashboardModelObj ?? this.studentDashboardModelObj,
    );
  }
}
