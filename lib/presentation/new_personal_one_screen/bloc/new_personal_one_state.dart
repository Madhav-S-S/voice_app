// ignore_for_file: must_be_immutable

part of 'new_personal_one_bloc.dart';

class NewPersonalOneState extends Equatable {
  NewPersonalOneState({this.newPersonalOneModelObj});

  NewPersonalOneModel? newPersonalOneModelObj;

  @override
  List<Object?> get props => [
        newPersonalOneModelObj,
      ];
  NewPersonalOneState copyWith({NewPersonalOneModel? newPersonalOneModelObj}) {
    return NewPersonalOneState(
      newPersonalOneModelObj:
          newPersonalOneModelObj ?? this.newPersonalOneModelObj,
    );
  }
}
