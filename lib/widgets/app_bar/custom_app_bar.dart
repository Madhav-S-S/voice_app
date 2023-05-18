import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillGray90003:
        return Container(
          height: getVerticalSize(
            93,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray90003,
          ),
        );
      case Style.bgFillGray900:
        return Container(
          height: getVerticalSize(
            93,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray900,
          ),
        );
      case Style.bgFillGray200:
        return Container(
          height: getVerticalSize(
            93,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray200,
          ),
        );
      default:
        return null;
    }
  }
}


enum Style {
  bgFillGray90003,
  bgFillGray900,
  bgFillGray200,
}
