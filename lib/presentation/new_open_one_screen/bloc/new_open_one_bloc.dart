import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/new_open_one_screen/models/new_open_one_model.dart';
part 'new_open_one_event.dart';
part 'new_open_one_state.dart';

class NewOpenOneBloc extends Bloc<NewOpenOneEvent, NewOpenOneState> {
  NewOpenOneBloc(NewOpenOneState initialState) : super(initialState) {
    on<NewOpenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewOpenOneInitialEvent event,
    Emitter<NewOpenOneState> emit,
  ) async {}
}
