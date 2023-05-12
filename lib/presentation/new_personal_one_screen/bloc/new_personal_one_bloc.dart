import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/new_personal_one_screen/models/new_personal_one_model.dart';
part 'new_personal_one_event.dart';
part 'new_personal_one_state.dart';

class NewPersonalOneBloc
    extends Bloc<NewPersonalOneEvent, NewPersonalOneState> {
  NewPersonalOneBloc(NewPersonalOneState initialState) : super(initialState) {
    on<NewPersonalOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewPersonalOneInitialEvent event,
    Emitter<NewPersonalOneState> emit,
  ) async {}
}
