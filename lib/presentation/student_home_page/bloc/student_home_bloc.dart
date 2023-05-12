import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/student_home_page/models/student_home_model.dart';
part 'student_home_event.dart';
part 'student_home_state.dart';

class StudentHomeBloc extends Bloc<StudentHomeEvent, StudentHomeState> {
  StudentHomeBloc(StudentHomeState initialState) : super(initialState) {
    on<StudentHomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StudentHomeInitialEvent event,
    Emitter<StudentHomeState> emit,
  ) async {}
}
