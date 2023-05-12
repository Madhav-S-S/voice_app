import 'bloc/personal_page_bloc.dart';
import 'models/personal_page_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_title.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class PersonalPageScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalPageBloc>(
        create: (context) => PersonalPageBloc(
            PersonalPageState(personalPageModelObj: PersonalPageModel()))
          ..add(PersonalPageInitialEvent()),
        child: PersonalPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalPageBloc, PersonalPageState>(
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
                        onTapBackbuttonwhite4(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_personal".tr),
                  styleType: Style.bgFillGray90003),
              body: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Container(
                          height: getVerticalSize(939),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        padding: getPadding(
                                            left: 16,
                                            top: 71,
                                            right: 16,
                                            bottom: 71),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin:
                                                          getMargin(right: 1),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: double
                                                                    .maxFinite,
                                                                child:
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                47,
                                                                            top:
                                                                                1,
                                                                            right:
                                                                                47,
                                                                            bottom:
                                                                                1),
                                                                        decoration: AppDecoration.fillBluegray700.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .customBorderTL12),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(width: getHorizontalSize(286), child: Text("msg_inability_to_undertand".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                            ]))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        349),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 13,
                                                                        right:
                                                                            19),
                                                                child: Text(
                                                                    "msg_i_have_been_struggling"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsLight16)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgOptions1,
                                                                height:
                                                                    getSize(19),
                                                                width:
                                                                    getSize(19),
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            11))
                                                          ]))),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(top: 40),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .black900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder12),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(187),
                                                      width: getHorizontalSize(
                                                          381),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            12,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            11),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .end,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              width: getHorizontalSize(349),
                                                                              margin: getMargin(right: 7),
                                                                              child: Text("msg_i_have_been_struggling".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgOptions1,
                                                                              height: getSize(19),
                                                                              width: getSize(19),
                                                                              margin: getMargin(top: 10))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            63),
                                                                        width: getHorizontalSize(
                                                                            381),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              Align(alignment: Alignment.topCenter, child: Container(height: getVerticalSize(60), width: getHorizontalSize(381), decoration: BoxDecoration(color: ColorConstant.gray90001, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(12)), topRight: Radius.circular(getHorizontalSize(12)))))),
                                                                              Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(255), child: Text("msg_inability_to_undertand".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20)))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        decoration: AppDecoration.outlineBlack900.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder12),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  width: double.maxFinite,
                                                                                  child: Container(
                                                                                      padding: getPadding(left: 35, right: 35),
                                                                                      decoration: AppDecoration.fillBluegray700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL12),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                        Container(width: getHorizontalSize(309), margin: getMargin(top: 3), child: Text("msg_i_have_difficulty".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                                      ]))),
                                                                              Container(width: getHorizontalSize(345), margin: getMargin(left: 12, top: 13, right: 23), child: Text("msg_as_a_college_student".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                              CustomImageView(imagePath: ImageConstant.imgOptions1, height: getSize(19), width: getSize(19), alignment: Alignment.centerRight, margin: getMargin(top: 11, right: 12, bottom: 11))
                                                                            ])))
                                                          ]))),
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      margin: getMargin(
                                                          top: 40,
                                                          right: 1,
                                                          bottom: 69),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder12),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width: double
                                                                    .maxFinite,
                                                                child:
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                39,
                                                                            top:
                                                                                13,
                                                                            right:
                                                                                39,
                                                                            bottom:
                                                                                13),
                                                                        decoration: AppDecoration.fillBluegray700.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .customBorderTL12),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              Padding(padding: getPadding(bottom: 3), child: Text("msg_regarding_my_carrier".tr.toUpperCase(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular20))
                                                                            ]))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        349),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 13,
                                                                        right:
                                                                            19),
                                                                child: Text(
                                                                    "msg_i_have_been_struggling"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsLight16)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgOptions1,
                                                                height:
                                                                    getSize(19),
                                                                width:
                                                                    getSize(19),
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            11))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(left: 16, right: 17),
                                        decoration: AppDecoration
                                            .outlineBlack900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 47,
                                                          top: 1,
                                                          right: 47,
                                                          bottom: 1),
                                                      decoration: AppDecoration
                                                          .fillBluegray700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL12),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        286),
                                                                child: Text(
                                                                    "msg_inability_to_undertand"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular20))
                                                          ]))),
                                              Container(
                                                  width: getHorizontalSize(357),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 12,
                                                      right: 12),
                                                  child: Text(
                                                      "msg_i_have_been_struggling"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsLight16)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgOptions1,
                                                  height: getSize(19),
                                                  width: getSize(19),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(
                                                      top: 12,
                                                      right: 12,
                                                      bottom: 11))
                                            ])))
                              ]))))));
    });
  }

  onTapBackbuttonwhite4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.facultyHomeScreen,
    );
  }
}
