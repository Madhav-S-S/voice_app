import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/personal_page_screen/models/personal_page_model.dart';
part 'personal_page_event.dart';
part 'personal_page_state.dart';

class PersonalPageBloc extends Bloc<PersonalPageEvent, PersonalPageState> {
  PersonalPageBloc(PersonalPageState initialState) : super(initialState) {
    on<PersonalPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalPageInitialEvent event,
    Emitter<PersonalPageState> emit,
  ) async {}
}
