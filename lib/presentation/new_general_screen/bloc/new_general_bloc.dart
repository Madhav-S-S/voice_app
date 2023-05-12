import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/new_general_screen/models/new_general_model.dart';
part 'new_general_event.dart';
part 'new_general_state.dart';

class NewGeneralBloc extends Bloc<NewGeneralEvent, NewGeneralState> {
  NewGeneralBloc(NewGeneralState initialState) : super(initialState) {
    on<NewGeneralInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewGeneralInitialEvent event,
    Emitter<NewGeneralState> emit,
  ) async {}
}
