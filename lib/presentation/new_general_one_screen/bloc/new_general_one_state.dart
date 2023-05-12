// ignore_for_file: must_be_immutable

part of 'new_general_one_bloc.dart';

class NewGeneralOneState extends Equatable {
  NewGeneralOneState({this.newGeneralOneModelObj});

  NewGeneralOneModel? newGeneralOneModelObj;

  @override
  List<Object?> get props => [
        newGeneralOneModelObj,
      ];
  NewGeneralOneState copyWith({NewGeneralOneModel? newGeneralOneModelObj}) {
    return NewGeneralOneState(
      newGeneralOneModelObj:
          newGeneralOneModelObj ?? this.newGeneralOneModelObj,
    );
  }
}
