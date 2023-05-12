// ignore_for_file: must_be_immutable

part of 'student_home_bloc.dart';

class StudentHomeState extends Equatable {
  StudentHomeState({this.studentHomeModelObj});

  StudentHomeModel? studentHomeModelObj;

  @override
  List<Object?> get props => [
        studentHomeModelObj,
      ];
  StudentHomeState copyWith({StudentHomeModel? studentHomeModelObj}) {
    return StudentHomeState(
      studentHomeModelObj: studentHomeModelObj ?? this.studentHomeModelObj,
    );
  }
}
