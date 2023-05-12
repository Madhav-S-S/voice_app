// ignore_for_file: must_be_immutable

part of 'general_page_one_bloc.dart';

@immutable
abstract class GeneralPageOneEvent extends Equatable {}

class GeneralPageOneInitialEvent extends GeneralPageOneEvent {
  @override
  List<Object?> get props => [];
}
