// ignore_for_file: must_be_immutable

part of 'faculty_login_bloc.dart';

class FacultyLoginState extends Equatable {
  FacultyLoginState({
    this.passwordboxController,
    this.facultyLoginModelObj,
  });

  TextEditingController? passwordboxController;

  FacultyLoginModel? facultyLoginModelObj;

  @override
  List<Object?> get props => [
        passwordboxController,
        facultyLoginModelObj,
      ];
  FacultyLoginState copyWith({
    TextEditingController? passwordboxController,
    FacultyLoginModel? facultyLoginModelObj,
  }) {
    return FacultyLoginState(
      passwordboxController:
          passwordboxController ?? this.passwordboxController,
      facultyLoginModelObj: facultyLoginModelObj ?? this.facultyLoginModelObj,
    );
  }
}
