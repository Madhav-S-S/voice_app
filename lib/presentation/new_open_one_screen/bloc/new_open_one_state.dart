// ignore_for_file: must_be_immutable

part of 'new_open_one_bloc.dart';

class NewOpenOneState extends Equatable {
  NewOpenOneState({this.newOpenOneModelObj});

  NewOpenOneModel? newOpenOneModelObj;

  @override
  List<Object?> get props => [
        newOpenOneModelObj,
      ];
  NewOpenOneState copyWith({NewOpenOneModel? newOpenOneModelObj}) {
    return NewOpenOneState(
      newOpenOneModelObj: newOpenOneModelObj ?? this.newOpenOneModelObj,
    );
  }
}
