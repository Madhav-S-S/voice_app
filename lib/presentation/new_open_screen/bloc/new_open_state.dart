// ignore_for_file: must_be_immutable

part of 'new_open_bloc.dart';

class NewOpenState extends Equatable {
  NewOpenState({this.newOpenModelObj});

  NewOpenModel? newOpenModelObj;

  @override
  List<Object?> get props => [
        newOpenModelObj,
      ];
  NewOpenState copyWith({NewOpenModel? newOpenModelObj}) {
    return NewOpenState(
      newOpenModelObj: newOpenModelObj ?? this.newOpenModelObj,
    );
  }
}
