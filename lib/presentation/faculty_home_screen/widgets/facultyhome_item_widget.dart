import '../models/facultyhome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';

// ignore: must_be_immutable
class FacultyhomeItemWidget extends StatelessWidget {
  FacultyhomeItemWidget(this.facultyhomeItemModelObj);

  FacultyhomeItemModel facultyhomeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: ColorConstant.indigo400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Container(
          height: getVerticalSize(
            186,
          ),
          width: getHorizontalSize(
            353,
          ),
          decoration: AppDecoration.fillIndigo400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder32,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGeneralcomplaint,
                height: getVerticalSize(
                  186,
                ),
                width: getHorizontalSize(
                  353,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    32,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 48,
                    top: 12,
                    right: 44,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: AppDecoration.txtOutlineBlack9003f1,
                        child: Text(
                          facultyhomeItemModelObj.generalTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium40,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          261,
                        ),
                        decoration: AppDecoration.txtOutlineBlack9003f1,
                        child: Text(
                          facultyhomeItemModelObj.complaintsrelatTxt,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsRegular20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
