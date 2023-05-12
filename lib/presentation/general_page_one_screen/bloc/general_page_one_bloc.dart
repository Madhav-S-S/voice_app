import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/general_page_one_screen/models/general_page_one_model.dart';
part 'general_page_one_event.dart';
part 'general_page_one_state.dart';

class GeneralPageOneBloc
    extends Bloc<GeneralPageOneEvent, GeneralPageOneState> {
  GeneralPageOneBloc(GeneralPageOneState initialState) : super(initialState) {
    on<GeneralPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GeneralPageOneInitialEvent event,
    Emitter<GeneralPageOneState> emit,
  ) async {}
}
