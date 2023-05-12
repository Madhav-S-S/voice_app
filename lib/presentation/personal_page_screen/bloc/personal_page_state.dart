// ignore_for_file: must_be_immutable

part of 'personal_page_bloc.dart';

class PersonalPageState extends Equatable {
  PersonalPageState({this.personalPageModelObj});

  PersonalPageModel? personalPageModelObj;

  @override
  List<Object?> get props => [
        personalPageModelObj,
      ];
  PersonalPageState copyWith({PersonalPageModel? personalPageModelObj}) {
    return PersonalPageState(
      personalPageModelObj: personalPageModelObj ?? this.personalPageModelObj,
    );
  }
}
