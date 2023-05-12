// ignore_for_file: must_be_immutable

part of 'open_page_bloc.dart';

@immutable
abstract class OpenPageEvent extends Equatable {}

class OpenPageInitialEvent extends OpenPageEvent {
  @override
  List<Object?> get props => [];
}
