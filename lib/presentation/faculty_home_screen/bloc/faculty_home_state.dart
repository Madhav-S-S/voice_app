// ignore_for_file: must_be_immutable

part of 'faculty_home_bloc.dart';

class FacultyHomeState extends Equatable {
  FacultyHomeState({this.facultyHomeModelObj});

  FacultyHomeModel? facultyHomeModelObj;

  @override
  List<Object?> get props => [
        facultyHomeModelObj,
      ];
  FacultyHomeState copyWith({FacultyHomeModel? facultyHomeModelObj}) {
    return FacultyHomeState(
      facultyHomeModelObj: facultyHomeModelObj ?? this.facultyHomeModelObj,
    );
  }
}
