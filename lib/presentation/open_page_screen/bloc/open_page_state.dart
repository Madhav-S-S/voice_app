// ignore_for_file: must_be_immutable

part of 'open_page_bloc.dart';

class OpenPageState extends Equatable {
  OpenPageState({this.openPageModelObj});

  OpenPageModel? openPageModelObj;

  @override
  List<Object?> get props => [
        openPageModelObj,
      ];
  OpenPageState copyWith({OpenPageModel? openPageModelObj}) {
    return OpenPageState(
      openPageModelObj: openPageModelObj ?? this.openPageModelObj,
    );
  }
}
