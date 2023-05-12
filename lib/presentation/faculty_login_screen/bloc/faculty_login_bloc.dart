import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/faculty_login_screen/models/faculty_login_model.dart';
part 'faculty_login_event.dart';
part 'faculty_login_state.dart';

class FacultyLoginBloc extends Bloc<FacultyLoginEvent, FacultyLoginState> {
  FacultyLoginBloc(FacultyLoginState initialState) : super(initialState) {
    on<FacultyLoginInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FacultyLoginInitialEvent event,
    Emitter<FacultyLoginState> emit,
  ) async {
    emit(state.copyWith(passwordboxController: TextEditingController()));
  }
}
