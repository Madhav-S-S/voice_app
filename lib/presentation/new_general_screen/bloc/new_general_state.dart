// ignore_for_file: must_be_immutable

part of 'new_general_bloc.dart';

class NewGeneralState extends Equatable {
  NewGeneralState({this.newGeneralModelObj});

  NewGeneralModel? newGeneralModelObj;

  @override
  List<Object?> get props => [
        newGeneralModelObj,
      ];
  NewGeneralState copyWith({NewGeneralModel? newGeneralModelObj}) {
    return NewGeneralState(
      newGeneralModelObj: newGeneralModelObj ?? this.newGeneralModelObj,
    );
  }
}
