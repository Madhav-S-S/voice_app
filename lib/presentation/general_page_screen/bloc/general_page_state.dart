// ignore_for_file: must_be_immutable

part of 'general_page_bloc.dart';

class GeneralPageState extends Equatable {
  GeneralPageState({
    this.safetycomplaintController,
    this.generalPageModelObj,
  });

  TextEditingController? safetycomplaintController;

  GeneralPageModel? generalPageModelObj;

  @override
  List<Object?> get props => [
        safetycomplaintController,
        generalPageModelObj,
      ];
  GeneralPageState copyWith({
    TextEditingController? safetycomplaintController,
    GeneralPageModel? generalPageModelObj,
  }) {
    return GeneralPageState(
      safetycomplaintController:
          safetycomplaintController ?? this.safetycomplaintController,
      generalPageModelObj: generalPageModelObj ?? this.generalPageModelObj,
    );
  }
}
