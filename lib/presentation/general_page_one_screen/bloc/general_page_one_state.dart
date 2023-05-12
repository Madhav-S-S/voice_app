// ignore_for_file: must_be_immutable

part of 'general_page_one_bloc.dart';

class GeneralPageOneState extends Equatable {
  GeneralPageOneState({this.generalPageOneModelObj});

  GeneralPageOneModel? generalPageOneModelObj;

  @override
  List<Object?> get props => [
        generalPageOneModelObj,
      ];
  GeneralPageOneState copyWith({GeneralPageOneModel? generalPageOneModelObj}) {
    return GeneralPageOneState(
      generalPageOneModelObj:
          generalPageOneModelObj ?? this.generalPageOneModelObj,
    );
  }
}
