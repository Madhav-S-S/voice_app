import 'bloc/open_page_one_bloc.dart';
import 'models/open_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_subtitle.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class OpenPageOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OpenPageOneBloc>(
        create: (context) => OpenPageOneBloc(
            OpenPageOneState(openPageOneModelObj: OpenPageOneModel()))
          ..add(OpenPageOneInitialEvent()),
        child: OpenPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OpenPageOneBloc, OpenPageOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(94),
                  leadingWidth: 45,
                  leading: AppbarImage(
                      height: getVerticalSize(19),
                      width: getHorizontalSize(24),
                      imagePath: ImageConstant.imgBackbuttonwhite,
                      margin: getMargin(left: 21, top: 28, bottom: 47),
                      onTap: () {
                        onTapBackbuttonwhite5(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_open_complaints".tr),
                  styleType: Style.bgFillGray90003),
              body: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Container(
                          height: getVerticalSize(950),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder25),
                                        child: Container(
                                            height: getVerticalSize(852),
                                            width: double.maxFinite,
                                            padding:
                                                getPadding(top: 18, bottom: 18),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder25),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  233),
                                                          width:
                                                              double.maxFinite,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        decoration: AppDecoration.outlineBlack900,
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Container(
                                                                              width: double.maxFinite,
                                                                              padding: getPadding(left: 15, top: 8, right: 15, bottom: 8),
                                                                              decoration: AppDecoration.fillBluegray700,
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgAvatar370456322, height: getSize(44), width: getSize(44), margin: getMargin(top: 7, bottom: 5)),
                                                                                Container(width: getHorizontalSize(285), margin: getMargin(right: 4), child: Text("msg_conflict_between".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                              ])),
                                                                          Container(
                                                                              width: getHorizontalSize(362),
                                                                              margin: getMargin(left: 13, top: 15, right: 38),
                                                                              child: Text("msg_the_date_of_iv_and".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                          Padding(
                                                                              padding: getPadding(left: 51, top: 27, bottom: 11),
                                                                              child: Row(children: [
                                                                                Container(
                                                                                    padding: getPadding(left: 5, top: 1, right: 5, bottom: 1),
                                                                                    decoration: AppDecoration.outlineBlack9003f4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      Padding(padding: getPadding(bottom: 7), child: Text("lbl_iv".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight14Black900))
                                                                                    ])),
                                                                                Padding(padding: getPadding(left: 9, top: 4, bottom: 4), child: Text("lbl_7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16))
                                                                              ]))
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgReportflag1,
                                                                    height:
                                                                        getVerticalSize(
                                                                            58),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            51),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft)
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  277),
                                                          width:
                                                              double.maxFinite,
                                                          margin: getMargin(
                                                              top: 191),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        margin: getMargin(bottom: 3),
                                                                        decoration: AppDecoration.outlineBlack900,
                                                                        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Container(
                                                                              width: double.maxFinite,
                                                                              padding: getPadding(left: 15, top: 5, right: 15, bottom: 5),
                                                                              decoration: AppDecoration.fillBluegray700,
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgOip12, height: getSize(44), width: getSize(44), radius: BorderRadius.circular(getHorizontalSize(22)), margin: getMargin(top: 11, bottom: 7)),
                                                                                Container(width: getHorizontalSize(281), margin: getMargin(right: 13, bottom: 6), child: Text("msg_low_end_computers".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                              ])),
                                                                          Container(
                                                                              width: getHorizontalSize(385),
                                                                              margin: getMargin(left: 13, top: 16, right: 15),
                                                                              child: Text("msg_the_computers_provided".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 51, top: 23, right: 13, bottom: 9),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    Container(
                                                                                        margin: getMargin(top: 2),
                                                                                        padding: getPadding(left: 7, top: 1, right: 7, bottom: 1),
                                                                                        decoration: AppDecoration.outlineBlack9003f4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Padding(padding: getPadding(bottom: 7), child: Text("lbl_cslab".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight14Black900))
                                                                                        ])),
                                                                                    Spacer(),
                                                                                    CustomImageView(imagePath: ImageConstant.img512x512bbremovebgpreview, height: getVerticalSize(34), width: getHorizontalSize(36)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgSharebutton1, height: getVerticalSize(25), width: getHorizontalSize(31), margin: getMargin(left: 10, top: 4, bottom: 5))
                                                                                  ])))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 7, right: 13),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgReportflag1,
                                                                              height: getVerticalSize(58),
                                                                              width: getHorizontalSize(51),
                                                                              margin: getMargin(top: 218)),
                                                                          Spacer(
                                                                              flex: 22),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgUpvote1,
                                                                              height: getSize(27),
                                                                              width: getSize(27),
                                                                              margin: getMargin(bottom: 250)),
                                                                          Padding(
                                                                              padding: getPadding(top: 233, bottom: 19),
                                                                              child: Text("lbl_26".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgUpvote1,
                                                                              height: getSize(27),
                                                                              width: getSize(27),
                                                                              margin: getMargin(top: 232, bottom: 18)),
                                                                          Spacer(
                                                                              flex: 77),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgSharebutton1,
                                                                              height: getVerticalSize(25),
                                                                              width: getHorizontalSize(31),
                                                                              margin: getMargin(bottom: 252))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  236),
                                                          width:
                                                              double.maxFinite,
                                                          margin: getMargin(
                                                              bottom: 116),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        decoration: AppDecoration.outlineBlack900,
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Container(
                                                                              width: double.maxFinite,
                                                                              padding: getPadding(top: 5, bottom: 5),
                                                                              decoration: AppDecoration.fillBluegray700,
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgAvatar1, height: getSize(44), width: getSize(44), radius: BorderRadius.circular(getHorizontalSize(22)), margin: getMargin(top: 10, bottom: 8)),
                                                                                Container(width: getHorizontalSize(319), margin: getMargin(bottom: 6), child: Text("msg_no_modern_structure".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                              ])),
                                                                          Container(
                                                                              width: getHorizontalSize(352),
                                                                              margin: getMargin(left: 13, top: 15, right: 48),
                                                                              child: Text("msg_vs_code_is_a_widely".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 59, top: 25, right: 13, bottom: 8),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                    Padding(padding: getPadding(top: 5, bottom: 4), child: Text("lbl_25".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getSize(27), width: getSize(27), margin: getMargin(left: 2, top: 3, bottom: 4)),
                                                                                    Spacer(),
                                                                                    CustomImageView(imagePath: ImageConstant.img512x512bbremovebgpreview, height: getVerticalSize(34), width: getHorizontalSize(36)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgSharebutton1, height: getVerticalSize(25), width: getHorizontalSize(31), margin: getMargin(left: 10, top: 5, bottom: 4))
                                                                                  ])))
                                                                        ]))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgReportflag1,
                                                                    height:
                                                                        getVerticalSize(
                                                                            58),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            51),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    margin: getMargin(
                                                                        left:
                                                                            7))
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img512x512bbremovebgpreview,
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(36),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: getMargin(
                                                          top: 188, right: 54))
                                                ])))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(236),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      decoration: AppDecoration
                                                          .outlineBlack900,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                                                padding:
                                                                    getPadding(
                                                                        top: 14,
                                                                        bottom:
                                                                            14),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBluegray700,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgAvatar21,
                                                                          height: getSize(
                                                                              44),
                                                                          width: getSize(
                                                                              44),
                                                                          margin:
                                                                              getMargin(top: 1)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  3,
                                                                              bottom:
                                                                                  11),
                                                                          child: Text(
                                                                              "msg_no_fans_in_middle".tr.toUpperCase(),
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular20))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top:
                                                                            14),
                                                                child: Text(
                                                                    "msg_i_have_been_struggling"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsLight16)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            34),
                                                                        width: getHorizontalSize(
                                                                            107),
                                                                        margin: getMargin(
                                                                            top:
                                                                                78,
                                                                            right:
                                                                                13,
                                                                            bottom:
                                                                                6),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgOptions1, height: getVerticalSize(23), width: getHorizontalSize(20), alignment: Alignment.topRight, margin: getMargin(top: 3)),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgUpvote2, height: getVerticalSize(34), width: getHorizontalSize(30)),
                                                                                    Container(
                                                                                        height: getVerticalSize(34),
                                                                                        width: getHorizontalSize(56),
                                                                                        margin: getMargin(left: 20),
                                                                                        child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                          CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getVerticalSize(34), width: getHorizontalSize(30), alignment: Alignment.centerRight),
                                                                                          Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(35), child: Text("lbl_25".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)))
                                                                                        ]))
                                                                                  ]))
                                                                            ])))
                                                          ]))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgReportflag1,
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(51),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: getMargin(left: 7))
                                            ])))
                              ]))))));
    });
  }

  onTapBackbuttonwhite5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.facultyHomeScreen,
    );
  }
}
