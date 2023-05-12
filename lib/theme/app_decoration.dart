import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray700 => BoxDecoration(
        color: ColorConstant.blueGray700,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignOutside,
        ),
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
      );
  static BoxDecoration get txtOutlineBlack9003f1 => BoxDecoration();
  static BoxDecoration get fillGray900b001 => BoxDecoration(
        color: ColorConstant.gray900B001,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillLightblue80001 => BoxDecoration(
        color: ColorConstant.lightBlue80001,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
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
              -3,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration(
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
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray900b0 => BoxDecoration(
        color: ColorConstant.gray900B0,
      );
  static BoxDecoration get fillCyan900 => BoxDecoration(
        color: ColorConstant.cyan900,
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
        color: ColorConstant.gray900,
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
      );
  static BoxDecoration get fillLightblue700 => BoxDecoration(
        color: ColorConstant.lightBlue700,
      );
  static BoxDecoration get fillIndigo400 => BoxDecoration(
        color: ColorConstant.indigo400,
      );
  static BoxDecoration get fillLightblue800 => BoxDecoration(
        color: ColorConstant.lightBlue800,
      );
  static BoxDecoration get outlineBlack9003f3 => BoxDecoration(
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
      );
  static BoxDecoration get outlineBlack9003f2 => BoxDecoration(
        color: ColorConstant.gray20001,
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
      );
  static BoxDecoration get outlineBlack9003f5 => BoxDecoration(
        color: ColorConstant.lightBlue800,
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
      );
  static BoxDecoration get outlineBlack9003f4 => BoxDecoration(
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
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f6 => BoxDecoration(
        color: ColorConstant.gray90003,
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
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius circleBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22,
    ),
  );

  static BorderRadius txtCircleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius customBorderTL85 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        85,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        85,
      ),
    ),
  );

  static BorderRadius roundedBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius customBorderTL12 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
  );

  static BorderRadius roundedBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32,
    ),
  );

  static BorderRadius roundedBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
