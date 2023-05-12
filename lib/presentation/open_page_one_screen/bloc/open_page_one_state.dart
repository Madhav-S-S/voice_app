// ignore_for_file: must_be_immutable

part of 'open_page_one_bloc.dart';

class OpenPageOneState extends Equatable {
  OpenPageOneState({this.openPageOneModelObj});

  OpenPageOneModel? openPageOneModelObj;

  @override
  List<Object?> get props => [
        openPageOneModelObj,
      ];
  OpenPageOneState copyWith({OpenPageOneModel? openPageOneModelObj}) {
    return OpenPageOneState(
      openPageOneModelObj: openPageOneModelObj ?? this.openPageOneModelObj,
    );
  }
}
