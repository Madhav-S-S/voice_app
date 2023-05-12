// ignore_for_file: must_be_immutable

part of 'student_home_container_bloc.dart';

@immutable
abstract class StudentHomeContainerEvent extends Equatable {}

class StudentHomeContainerInitialEvent extends StudentHomeContainerEvent {
  @override
  List<Object?> get props => [];
}
