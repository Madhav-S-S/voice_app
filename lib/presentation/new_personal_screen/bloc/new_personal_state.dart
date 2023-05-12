// ignore_for_file: must_be_immutable

part of 'new_personal_bloc.dart';

class NewPersonalState extends Equatable {
  NewPersonalState({this.newPersonalModelObj});

  NewPersonalModel? newPersonalModelObj;

  @override
  List<Object?> get props => [
        newPersonalModelObj,
      ];
  NewPersonalState copyWith({NewPersonalModel? newPersonalModelObj}) {
    return NewPersonalState(
      newPersonalModelObj: newPersonalModelObj ?? this.newPersonalModelObj,
    );
  }
}
