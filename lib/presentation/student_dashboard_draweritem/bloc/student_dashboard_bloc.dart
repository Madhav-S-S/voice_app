import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/student_dashboard_draweritem/models/student_dashboard_model.dart';
part 'student_dashboard_event.dart';
part 'student_dashboard_state.dart';

class StudentDashboardBloc
    extends Bloc<StudentDashboardEvent, StudentDashboardState> {
  StudentDashboardBloc(StudentDashboardState initialState)
      : super(initialState) {
    on<StudentDashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StudentDashboardInitialEvent event,
    Emitter<StudentDashboardState> emit,
  ) async {}
}
