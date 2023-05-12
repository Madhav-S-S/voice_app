// ignore_for_file: must_be_immutable

part of 'personal_page_one_bloc.dart';

class PersonalPageOneState extends Equatable {
  PersonalPageOneState({this.personalPageOneModelObj});

  PersonalPageOneModel? personalPageOneModelObj;

  @override
  List<Object?> get props => [
        personalPageOneModelObj,
      ];
  PersonalPageOneState copyWith(
      {PersonalPageOneModel? personalPageOneModelObj}) {
    return PersonalPageOneState(
      personalPageOneModelObj:
          personalPageOneModelObj ?? this.personalPageOneModelObj,
    );
  }
}
