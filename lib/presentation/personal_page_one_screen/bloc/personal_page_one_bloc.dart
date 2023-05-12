import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/personal_page_one_screen/models/personal_page_one_model.dart';
part 'personal_page_one_event.dart';
part 'personal_page_one_state.dart';

class PersonalPageOneBloc
    extends Bloc<PersonalPageOneEvent, PersonalPageOneState> {
  PersonalPageOneBloc(PersonalPageOneState initialState) : super(initialState) {
    on<PersonalPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalPageOneInitialEvent event,
    Emitter<PersonalPageOneState> emit,
  ) async {}
}
