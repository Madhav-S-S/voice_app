// ignore_for_file: must_be_immutable

part of 'open_page_one_bloc.dart';

@immutable
abstract class OpenPageOneEvent extends Equatable {}

class OpenPageOneInitialEvent extends OpenPageOneEvent {
  @override
  List<Object?> get props => [];
}
