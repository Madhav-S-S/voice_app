import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/open_page_one_screen/models/open_page_one_model.dart';
part 'open_page_one_event.dart';
part 'open_page_one_state.dart';

class OpenPageOneBloc extends Bloc<OpenPageOneEvent, OpenPageOneState> {
  OpenPageOneBloc(OpenPageOneState initialState) : super(initialState) {
    on<OpenPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OpenPageOneInitialEvent event,
    Emitter<OpenPageOneState> emit,
  ) async {}
}
