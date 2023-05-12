import 'package:equatable/equatable.dart';
import 'openpage_item_model.dart';

// ignore: must_be_immutable
class OpenPageModel extends Equatable {
  OpenPageModel({this.openpageItemList = const []});

  List<OpenpageItemModel> openpageItemList;

  OpenPageModel copyWith({List<OpenpageItemModel>? openpageItemList}) {
    return OpenPageModel(
      openpageItemList: openpageItemList ?? this.openpageItemList,
    );
  }

  @override
  List<Object?> get props => [openpageItemList];
}
