// ignore_for_file: must_be_immutable

part of 'general_page_bloc.dart';

@immutable
abstract class GeneralPageEvent extends Equatable {}

class GeneralPageInitialEvent extends GeneralPageEvent {
  @override
  List<Object?> get props => [];
}
