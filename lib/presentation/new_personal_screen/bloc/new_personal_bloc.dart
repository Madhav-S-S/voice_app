import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/new_personal_screen/models/new_personal_model.dart';
part 'new_personal_event.dart';
part 'new_personal_state.dart';

class NewPersonalBloc extends Bloc<NewPersonalEvent, NewPersonalState> {
  NewPersonalBloc(NewPersonalState initialState) : super(initialState) {
    on<NewPersonalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewPersonalInitialEvent event,
    Emitter<NewPersonalState> emit,
  ) async {}
}
