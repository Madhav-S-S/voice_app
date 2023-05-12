import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:voice/presentation/app_navigation_screen/models/app_navigation_model.dart';
part 'app_navigation_event.dart';
part 'app_navigation_state.dart';

class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc(AppNavigationState initialState) : super(initialState) {
    on<AppNavigationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppNavigationInitialEvent event,
    Emitter<AppNavigationState> emit,
  ) async {}
}
