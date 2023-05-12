import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/new_general_one_screen/models/new_general_one_model.dart';
part 'new_general_one_event.dart';
part 'new_general_one_state.dart';

class NewGeneralOneBloc extends Bloc<NewGeneralOneEvent, NewGeneralOneState> {
  NewGeneralOneBloc(NewGeneralOneState initialState) : super(initialState) {
    on<NewGeneralOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewGeneralOneInitialEvent event,
    Emitter<NewGeneralOneState> emit,
  ) async {}
}
