// ignore_for_file: must_be_immutable

part of 'student_home_container_bloc.dart';

class StudentHomeContainerState extends Equatable {
  StudentHomeContainerState({this.studentHomeContainerModelObj});

  StudentHomeContainerModel? studentHomeContainerModelObj;

  @override
  List<Object?> get props => [
        studentHomeContainerModelObj,
      ];
  StudentHomeContainerState copyWith(
      {StudentHomeContainerModel? studentHomeContainerModelObj}) {
    return StudentHomeContainerState(
      studentHomeContainerModelObj:
          studentHomeContainerModelObj ?? this.studentHomeContainerModelObj,
    );
  }
}
