import '../models/openpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';

// ignore: must_be_immutable
class OpenpageItemWidget extends StatelessWidget {
  OpenpageItemWidget(this.openpageItemModelObj);

  OpenpageItemModel openpageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        236,
      ),
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      left: 15,
                      top: 8,
                      right: 15,
                      bottom: 8,
                    ),
                    decoration: AppDecoration.fillCyan900,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAvatar370456322,
                          height: getSize(
                            44,
                          ),
                          width: getSize(
                            44,
                          ),
                          margin: getMargin(
                            top: 7,
                            bottom: 5,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            285,
                          ),
                          margin: getMargin(
                            right: 4,
                          ),
                          child: Text(
                            openpageItemModelObj.priceTxt,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtPoppinsRegular20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      362,
                    ),
                    margin: getMargin(
                      left: 13,
                      top: 15,
                      right: 38,
                    ),
                    child: Text(
                      openpageItemModelObj.thedateofivandTxt,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsLight16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 60,
                        top: 28,
                        right: 13,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              40,
                            ),
                            margin: getMargin(
                              bottom: 2,
                            ),
                            padding: getPadding(
                              left: 5,
                              top: 1,
                              right: 5,
                              bottom: 1,
                            ),
                            decoration: AppDecoration.txtOutlineBlack9003f,
                            child: Text(
                              openpageItemModelObj.hashtagTxt,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsLight14Black900,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              132,
                            ),
                            margin: getMargin(
                              left: 18,
                              bottom: 2,
                            ),
                            padding: getPadding(
                              left: 11,
                              top: 1,
                              right: 11,
                              bottom: 1,
                            ),
                            decoration: AppDecoration.txtOutlineBlack9003f,
                            child: Text(
                              openpageItemModelObj.hashtagoneTxt,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsLight14Black900,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUpvote2,
                            height: getVerticalSize(
                              34,
                            ),
                            width: getHorizontalSize(
                              30,
                            ),
                            margin: getMargin(
                              left: 41,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 26,
                              top: 4,
                              bottom: 6,
                            ),
                            child: Text(
                              openpageItemModelObj.numberTxt,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsLight16,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUpvote1,
                            height: getVerticalSize(
                              34,
                            ),
                            width: getHorizontalSize(
                              30,
                            ),
                            margin: getMargin(
                              left: 11,
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
          CustomImageView(
            imagePath: ImageConstant.imgReportflag1,
            height: getVerticalSize(
              58,
            ),
            width: getHorizontalSize(
              51,
            ),
            alignment: Alignment.bottomLeft,
            margin: getMargin(
              left: 7,
            ),
          ),
        ],
      ),
    );
  }
}
