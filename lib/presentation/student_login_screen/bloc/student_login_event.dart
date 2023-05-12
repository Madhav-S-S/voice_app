// ignore_for_file: must_be_immutable

part of 'student_login_bloc.dart';

@immutable
abstract class StudentLoginEvent extends Equatable {}

class StudentLoginInitialEvent extends StudentLoginEvent {
  @override
  List<Object?> get props => [];
}
