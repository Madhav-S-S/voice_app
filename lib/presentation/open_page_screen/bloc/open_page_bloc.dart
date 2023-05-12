import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/openpage_item_model.dart';
import 'package:voice/presentation/open_page_screen/models/open_page_model.dart';
part 'open_page_event.dart';
part 'open_page_state.dart';

class OpenPageBloc extends Bloc<OpenPageEvent, OpenPageState> {
  OpenPageBloc(OpenPageState initialState) : super(initialState) {
    on<OpenPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OpenPageInitialEvent event,
    Emitter<OpenPageState> emit,
  ) async {
    emit(state.copyWith(
        openPageModelObj: state.openPageModelObj
            ?.copyWith(openpageItemList: fillOpenpageItemList())));
  }

  List<OpenpageItemModel> fillOpenpageItemList() {
    return List.generate(2, (index) => OpenpageItemModel());
  }
}
