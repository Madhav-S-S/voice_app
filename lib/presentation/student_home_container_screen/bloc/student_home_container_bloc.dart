import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/widgets/custom_bottom_bar.dart';
import 'package:voice/presentation/student_home_container_screen/models/student_home_container_model.dart';
part 'student_home_container_event.dart';
part 'student_home_container_state.dart';

class StudentHomeContainerBloc
    extends Bloc<StudentHomeContainerEvent, StudentHomeContainerState> {
  StudentHomeContainerBloc(StudentHomeContainerState initialState)
      : super(initialState) {
    on<StudentHomeContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StudentHomeContainerInitialEvent event,
    Emitter<StudentHomeContainerState> emit,
  ) async {}
}
