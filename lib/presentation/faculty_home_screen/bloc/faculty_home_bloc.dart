import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/facultyhome_item_model.dart';
import 'package:voice/presentation/faculty_home_screen/models/faculty_home_model.dart';
part 'faculty_home_event.dart';
part 'faculty_home_state.dart';

class FacultyHomeBloc extends Bloc<FacultyHomeEvent, FacultyHomeState> {
  FacultyHomeBloc(FacultyHomeState initialState) : super(initialState) {
    on<FacultyHomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FacultyHomeInitialEvent event,
    Emitter<FacultyHomeState> emit,
  ) async {
    emit(state.copyWith(
        facultyHomeModelObj: state.facultyHomeModelObj?.copyWith(
      facultyhomeItemList: fillFacultyhomeItemList(),
    )));
  }

  List<FacultyhomeItemModel> fillFacultyhomeItemList() {
    return List.generate(3, (index) => FacultyhomeItemModel());
  }
}
