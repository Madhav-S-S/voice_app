import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/new_open_screen/models/new_open_model.dart';
part 'new_open_event.dart';
part 'new_open_state.dart';

class NewOpenBloc extends Bloc<NewOpenEvent, NewOpenState> {
  NewOpenBloc(NewOpenState initialState) : super(initialState) {
    on<NewOpenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewOpenInitialEvent event,
    Emitter<NewOpenState> emit,
  ) async {}
}
