import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/faculty_dashboard_draweritem/models/faculty_dashboard_model.dart';
part 'faculty_dashboard_event.dart';
part 'faculty_dashboard_state.dart';

class FacultyDashboardBloc
    extends Bloc<FacultyDashboardEvent, FacultyDashboardState> {
  FacultyDashboardBloc(FacultyDashboardState initialState)
      : super(initialState) {
    on<FacultyDashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FacultyDashboardInitialEvent event,
    Emitter<FacultyDashboardState> emit,
  ) async {}
}
