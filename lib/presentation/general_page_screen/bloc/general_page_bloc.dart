import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/general_page_screen/models/general_page_model.dart';
part 'general_page_event.dart';
part 'general_page_state.dart';

class GeneralPageBloc extends Bloc<GeneralPageEvent, GeneralPageState> {
  GeneralPageBloc(GeneralPageState initialState) : super(initialState) {
    on<GeneralPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GeneralPageInitialEvent event,
    Emitter<GeneralPageState> emit,
  ) async {
    emit(state.copyWith(safetycomplaintController: TextEditingController()));
  }
}
