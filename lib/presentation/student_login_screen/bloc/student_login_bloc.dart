import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/student_login_screen/models/student_login_model.dart';
part 'student_login_event.dart';
part 'student_login_state.dart';

class StudentLoginBloc extends Bloc<StudentLoginEvent, StudentLoginState> {
  StudentLoginBloc(StudentLoginState initialState) : super(initialState) {
    on<StudentLoginInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StudentLoginInitialEvent event,
    Emitter<StudentLoginState> emit,
  ) async {
    emit(state.copyWith(passwordboxController: TextEditingController()));
  }
}
