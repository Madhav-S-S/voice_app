// ignore_for_file: must_be_immutable

part of 'student_login_bloc.dart';

class StudentLoginState extends Equatable {
  StudentLoginState({
    this.passwordboxController,
    this.studentLoginModelObj,
  });

  TextEditingController? passwordboxController;

  StudentLoginModel? studentLoginModelObj;

  @override
  List<Object?> get props => [
        passwordboxController,
        studentLoginModelObj,
      ];
  StudentLoginState copyWith({
    TextEditingController? passwordboxController,
    StudentLoginModel? studentLoginModelObj,
  }) {
    return StudentLoginState(
      passwordboxController:
          passwordboxController ?? this.passwordboxController,
      studentLoginModelObj: studentLoginModelObj ?? this.studentLoginModelObj,
    );
  }
}
