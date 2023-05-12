import 'bloc/student_home_bloc.dart';
import 'models/student_home_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_title.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class StudentHomePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<StudentHomeBloc>(
        create: (context) => StudentHomeBloc(
            StudentHomeState(studentHomeModelObj: StudentHomeModel()))
          ..add(StudentHomeInitialEvent()),
        child: StudentHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentHomeBloc, StudentHomeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(94),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_home".tr),
                  actions: [
                    AppbarImage(
                        height: getSize(30),
                        width: getSize(30),
                        imagePath: ImageConstant.imgProfileicon1,
                        margin:
                            getMargin(left: 27, top: 24, right: 27, bottom: 40))
                  ],
                  styleType: Style.bgFillGray900),
              body: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Container(
                          height: getVerticalSize(878),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 52,
                                            top: 32,
                                            right: 52,
                                            bottom: 32),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 751),
                                                  child: Text(
                                                      "msg_select_the_complaint"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsLight24))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(796),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTransparentlogo738x414,
                                                  height: getVerticalSize(738),
                                                  width: getHorizontalSize(414),
                                                  alignment:
                                                      Alignment.topCenter),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      margin: getMargin(
                                                          bottom: 128),
                                                      padding: getPadding(
                                                          left: 51,
                                                          top: 15,
                                                          right: 51,
                                                          bottom: 15),
                                                      decoration: AppDecoration
                                                          .fillLightblue700,
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
                                                                        202),
                                                                decoration:
                                                                    AppDecoration
                                                                        .txtOutlineBlack9003f1,
                                                                child: Text(
                                                                    "lbl_personal2"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium40)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        306),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            33),
                                                                decoration:
                                                                    AppDecoration
                                                                        .txtOutlineBlack9003f1,
                                                                child: Text(
                                                                    "msg_your_personal_complaint"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular20))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapOpenbutton(
                                                            context);
                                                      },
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 228),
                                                          padding: getPadding(
                                                              left: 51,
                                                              top: 13,
                                                              right: 51,
                                                              bottom: 13),
                                                          decoration: AppDecoration
                                                              .fillLightblue80001,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            107),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .txtOutlineBlack9003f1,
                                                                    child: Text(
                                                                        "lbl_open"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium40)),
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            306),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            30),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .txtOutlineBlack9003f1,
                                                                    child: Text(
                                                                        "msg_complaints_related"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular20))
                                                              ])))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      margin:
                                                          getMargin(top: 20),
                                                      padding: getPadding(
                                                          left: 51,
                                                          top: 13,
                                                          right: 51,
                                                          bottom: 13),
                                                      decoration: AppDecoration
                                                          .fillLightblue800,
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
                                                                        183),
                                                                decoration:
                                                                    AppDecoration
                                                                        .txtOutlineBlack9003f1,
                                                                child: Text(
                                                                    "lbl_general"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium40)),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        306),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            30),
                                                                decoration:
                                                                    AppDecoration
                                                                        .txtOutlineBlack9003f1,
                                                                child: Text(
                                                                    "msg_complaints_related2"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular20))
                                                          ])))
                                            ])))
                              ]))))));
    });
  }

  onTapOpenbutton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.openPageScreen,
    );
  }
}
