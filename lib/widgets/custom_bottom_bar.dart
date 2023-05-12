import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeicon,
      type: BottomBarEnum.Homeicon,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.img512x512bbremovebgpreview,
      type: BottomBarEnum.x512bbremovebgpreview,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPngwing1,
      type: BottomBarEnum.Pngwing1,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              padding: getPadding(
                left: 41,
                top: 7,
                right: 41,
                bottom: 7,
              ),
              decoration: AppDecoration.outlineBlack9003f3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].isPng == true
                        ? null
                        : bottomMenuList[index].icon,
                    imagePath: bottomMenuList[index].isPng == true
                        ? bottomMenuList[index].icon
                        : null,
                    height: getSize(
                      56,
                    ),
                    width: getSize(
                      56,
                    ),
                    margin: getMargin(
                      top: 7,
                      bottom: 7,
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              padding: getPadding(
                left: 54,
                top: 23,
                right: 54,
                bottom: 23,
              ),
              decoration: AppDecoration.outlineBlack9003f2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].isPng == true
                        ? null
                        : bottomMenuList[index].icon,
                    imagePath: bottomMenuList[index].isPng == true
                        ? bottomMenuList[index].icon
                        : null,
                    height: getVerticalSize(
                      24,
                    ),
                    width: getHorizontalSize(
                      30,
                    ),
                    margin: getMargin(
                      top: 23,
                      bottom: 23,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homeicon,
  x512bbremovebgpreview,
  Pngwing1,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type, this.isPng = false});

  String icon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
