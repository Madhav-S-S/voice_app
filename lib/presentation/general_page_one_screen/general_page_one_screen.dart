import 'bloc/general_page_one_bloc.dart';
import 'models/general_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_subtitle.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class GeneralPageOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GeneralPageOneBloc>(
        create: (context) => GeneralPageOneBloc(
            GeneralPageOneState(generalPageOneModelObj: GeneralPageOneModel()))
          ..add(GeneralPageOneInitialEvent()),
        child: GeneralPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralPageOneBloc, GeneralPageOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                  height: getVerticalSize(93),
                                  leadingWidth: 45,
                                  leading: AppbarImage(
                                      height: getVerticalSize(19),
                                      width: getHorizontalSize(24),
                                      imagePath:
                                          ImageConstant.imgBackbuttonwhite,
                                      margin: getMargin(
                                          left: 21, top: 28, bottom: 46),
                                      onTap: () {
                                        onTapBackbuttonwhite3(context);
                                      }),
                                  title: AppbarSubtitle(
                                      text: "msg_general_complaints".tr,
                                      margin: getMargin(left: 71)),
                                  styleType: Style.bgFillGray90003),
                              CustomImageView(
                                  imagePath: ImageConstant.imgOptions1,
                                  height: getVerticalSize(18),
                                  width: getHorizontalSize(19),
                                  margin: getMargin(top: 7, right: 29))
                            ]),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    height: getVerticalSize(957),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPlusbutton2,
                                              height: getSize(65),
                                              width: getSize(65),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 17, bottom: 183)),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder25),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(852),
                                                      width: double.maxFinite,
                                                      padding: getPadding(
                                                          top: 25, bottom: 25),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder25),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              236),
                                                                          width: double
                                                                              .maxFinite,
                                                                          child: Stack(
                                                                              alignment: Alignment.bottomLeft,
                                                                              children: [
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Container(
                                                                                        decoration: AppDecoration.outlineBlack900,
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Container(
                                                                                              width: double.maxFinite,
                                                                                              padding: getPadding(left: 15, top: 7, right: 15, bottom: 7),
                                                                                              decoration: AppDecoration.fillBluegray700,
                                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgAvatar1, height: getSize(44), width: getSize(44), radius: BorderRadius.circular(getHorizontalSize(22)), margin: getMargin(top: 5, bottom: 10)),
                                                                                                Container(width: getHorizontalSize(257), margin: getMargin(top: 3, right: 33), child: Text("msg_problems_regarding".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                                              ])),
                                                                                          Container(width: getHorizontalSize(369), margin: getMargin(left: 13, top: 15, right: 31), child: Text("msg_the_festival_did".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                                          Align(
                                                                                              alignment: Alignment.centerRight,
                                                                                              child: Padding(
                                                                                                  padding: getPadding(left: 60, top: 27, right: 13, bottom: 10),
                                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                                    Container(width: getHorizontalSize(117), padding: getPadding(left: 11, top: 1, right: 11, bottom: 1), decoration: AppDecoration.txtOutlineBlack9003f.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder16), child: Text("lbl_nk23".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight14Black900)),
                                                                                                    Padding(padding: getPadding(left: 7, top: 5, bottom: 4), child: Text("lbl_320".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                                                    CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getSize(27), width: getSize(27), margin: getMargin(left: 5, top: 3, bottom: 4)),
                                                                                                    Spacer(),
                                                                                                    CustomImageView(imagePath: ImageConstant.img512x512bbremovebgpreview, height: getVerticalSize(34), width: getHorizontalSize(36)),
                                                                                                    CustomImageView(imagePath: ImageConstant.imgSharebutton1, height: getVerticalSize(25), width: getHorizontalSize(31), margin: getMargin(left: 10, top: 4, bottom: 5))
                                                                                                  ])))
                                                                                        ]))),
                                                                                CustomImageView(imagePath: ImageConstant.imgReportflag1, height: getVerticalSize(58), width: getHorizontalSize(51), alignment: Alignment.bottomLeft, margin: getMargin(left: 7))
                                                                              ])),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgUpvote1,
                                                                          height: getSize(
                                                                              27),
                                                                          width: getSize(
                                                                              27),
                                                                          margin: getMargin(
                                                                              top: 187,
                                                                              right: 167))
                                                                    ])),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            236),
                                                                        width: double
                                                                            .maxFinite,
                                                                        margin: getMargin(
                                                                            top:
                                                                                232),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomLeft,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Container(
                                                                                      decoration: AppDecoration.outlineBlack900,
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                        Container(
                                                                                            width: double.maxFinite,
                                                                                            padding: getPadding(top: 5, bottom: 5),
                                                                                            decoration: AppDecoration.fillBluegray700,
                                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                              CustomImageView(imagePath: ImageConstant.imgAvatar21, height: getSize(44), width: getSize(44), margin: getMargin(left: 15, top: 15, bottom: 15)),
                                                                                              Container(width: getHorizontalSize(301), margin: getMargin(left: 37, top: 5, right: 15, bottom: 12), child: Text("msg_inadequate_or_insufficient".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                                            ])),
                                                                                        Container(width: getHorizontalSize(383), margin: getMargin(left: 9, top: 15, right: 21), child: Text("msg_there_have_been".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                                        Align(
                                                                                            alignment: Alignment.centerRight,
                                                                                            child: Padding(
                                                                                                padding: getPadding(left: 60, top: 28, right: 13, bottom: 8),
                                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                  Container(width: getHorizontalSize(117), margin: getMargin(bottom: 2), padding: getPadding(left: 11, top: 3, right: 11, bottom: 3), decoration: AppDecoration.txtOutlineBlack9003f.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder16), child: Text("lbl_safety".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight14Black900)),
                                                                                                  Padding(padding: getPadding(left: 10, top: 4, bottom: 6), child: Text("lbl_42".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                                                  CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getSize(27), width: getSize(27), margin: getMargin(left: 2, top: 3, bottom: 5)),
                                                                                                  Spacer(),
                                                                                                  CustomImageView(imagePath: ImageConstant.img512x512bbremovebgpreview, height: getVerticalSize(34), width: getHorizontalSize(36), margin: getMargin(top: 1)),
                                                                                                  CustomImageView(imagePath: ImageConstant.imgSharebutton1, height: getVerticalSize(25), width: getHorizontalSize(31), margin: getMargin(left: 10, top: 3, bottom: 7))
                                                                                                ])))
                                                                                      ]))),
                                                                              CustomImageView(imagePath: ImageConstant.imgReportflag1, height: getVerticalSize(58), width: getHorizontalSize(51), alignment: Alignment.bottomLeft, margin: getMargin(left: 7))
                                                                            ])))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(236),
                                                  width: double.maxFinite,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack900,
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          width: double
                                                                              .maxFinite,
                                                                          padding: getPadding(
                                                                              left:
                                                                                  15,
                                                                              top:
                                                                                  5,
                                                                              right:
                                                                                  15,
                                                                              bottom:
                                                                                  5),
                                                                          decoration: AppDecoration
                                                                              .fillBluegray700,
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgAvatar370456322, height: getSize(44), width: getSize(44), margin: getMargin(top: 9, bottom: 9)),
                                                                                Container(width: getHorizontalSize(284), margin: getMargin(right: 5, bottom: 6), child: Text("msg_inadequate_or_insufficient2".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  13,
                                                                              top:
                                                                                  10),
                                                                          child: Text(
                                                                              "msg_i_have_been_struggling".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsLight16)),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.centerRight,
                                                                          child: Container(
                                                                              height: getVerticalSize(34),
                                                                              width: getHorizontalSize(107),
                                                                              margin: getMargin(top: 78, right: 13, bottom: 9),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgOptions1, height: getVerticalSize(23), width: getHorizontalSize(20), alignment: Alignment.bottomRight, margin: getMargin(bottom: 3)),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgUpvote2, height: getVerticalSize(34), width: getHorizontalSize(30)),
                                                                                      Container(
                                                                                          height: getVerticalSize(34),
                                                                                          width: getHorizontalSize(63),
                                                                                          margin: getMargin(left: 14),
                                                                                          child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                            CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getVerticalSize(34), width: getHorizontalSize(30), alignment: Alignment.centerRight),
                                                                                            Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(35), child: Text("lbl_62".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)))
                                                                                          ]))
                                                                                    ]))
                                                                              ])))
                                                                    ]))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgReportflag1,
                                                            height:
                                                                getVerticalSize(
                                                                    58),
                                                            width:
                                                                getHorizontalSize(
                                                                    51),
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin: getMargin(
                                                                left: 7))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(236),
                                                  width: double.maxFinite,
                                                  margin:
                                                      getMargin(bottom: 232),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack900,
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          width: double
                                                                              .maxFinite,
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  13,
                                                                              right:
                                                                                  16,
                                                                              bottom:
                                                                                  13),
                                                                          decoration: AppDecoration
                                                                              .fillBluegray700,
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgOip12, height: getSize(44), width: getSize(44), radius: BorderRadius.circular(getHorizontalSize(22)), margin: getMargin(top: 3)),
                                                                                Container(width: getHorizontalSize(286), margin: getMargin(top: 1, right: 5, bottom: 1), child: Text("msg_inadequate_communication".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular16))
                                                                              ])),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              322),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  13,
                                                                              top:
                                                                                  15,
                                                                              right:
                                                                                  78),
                                                                          child: Text(
                                                                              "msg_there_is_a_lack".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsLight16)),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.centerRight,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 60, top: 26, right: 13, bottom: 8),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Container(width: getHorizontalSize(132), margin: getMargin(bottom: 2), padding: getPadding(left: 11, top: 1, right: 11, bottom: 1), decoration: AppDecoration.txtOutlineBlack9003f.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder16), child: Text("lbl_notification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight14Black900)),
                                                                                Padding(padding: getPadding(left: 7, top: 2, bottom: 8), child: Text("lbl_62".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                                CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getSize(27), width: getSize(27), margin: getMargin(left: 2, top: 2, bottom: 6)),
                                                                                Spacer(),
                                                                                CustomImageView(imagePath: ImageConstant.img512x512bbremovebgpreview, height: getVerticalSize(34), width: getHorizontalSize(36), margin: getMargin(top: 1)),
                                                                                CustomImageView(imagePath: ImageConstant.imgSharebutton1, height: getVerticalSize(25), width: getHorizontalSize(31), margin: getMargin(left: 10, top: 3, bottom: 7))
                                                                              ])))
                                                                    ]))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgReportflag1,
                                                            height:
                                                                getVerticalSize(
                                                                    58),
                                                            width:
                                                                getHorizontalSize(
                                                                    51),
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            margin: getMargin(
                                                                left: 7))
                                                      ])))
                                        ]))))
                      ]))));
    });
  }

  onTapBackbuttonwhite3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.facultyHomeScreen,
    );
  }
}
