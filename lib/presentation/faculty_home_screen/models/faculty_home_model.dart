import 'package:equatable/equatable.dart';
import 'facultyhome_item_model.dart';

// ignore: must_be_immutable
class FacultyHomeModel extends Equatable {
  FacultyHomeModel({this.facultyhomeItemList = const []});

  List<FacultyhomeItemModel> facultyhomeItemList;

  FacultyHomeModel copyWith({List<FacultyhomeItemModel>? facultyhomeItemList}) {
    return FacultyHomeModel(
      facultyhomeItemList: facultyhomeItemList ?? this.facultyhomeItemList,
    );
  }

  @override
  List<Object?> get props => [facultyhomeItemList];
}
