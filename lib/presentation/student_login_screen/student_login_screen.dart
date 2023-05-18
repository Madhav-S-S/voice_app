import 'bloc/student_login_bloc.dart';
import 'models/student_login_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/custom_button.dart';

class StudentLoginScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<StudentLoginBloc>(
        create: (context) => StudentLoginBloc(
            StudentLoginState(studentLoginModelObj: StudentLoginModel()))
          ..add(StudentLoginInitialEvent()),
        child: StudentLoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(962),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      384),
                                                              width: double
                                                                  .maxFinite,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgBluebackground,
                                                                        height: getVerticalSize(
                                                                            384),
                                                                        width: getHorizontalSize(
                                                                            414),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: Container(
                                                                            height: getVerticalSize(188),
                                                                            width: getHorizontalSize(130),
                                                                            child: Stack(alignment: Alignment.topCenter, children: [
                                                                              Align(alignment: Alignment.bottomCenter, child: Text("lbl_voice".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular435)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVoiceicon, height: getSize(129), width: getSize(129), alignment: Alignment.topCenter)
                                                                            ])))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 77,
                                                                      top: 50,
                                                                      right: 77,
                                                                      bottom:
                                                                          91),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderTL85),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_student_login"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular32),
                                                                    Text(
                                                                        "msg_sign_in_to_continue"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtCandara17),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 48, bottom: 353),
                                                                            child: Text("lbl_college_mail_id".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCandara15)))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(628),
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment(1,0.6)
                                                              ,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 69,
                                                                      top: 44,
                                                                      right:
                                                                          63),
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
                                                                    SizedBox(
                                                                      width: 275,
                                                                      child: Align(
                                                                        alignment: Alignment(0, 0),
                                                                        child: TextField(
                                                                          obscureText: true,
                                                                          decoration: InputDecoration(
                                                                            filled: true,
                                                                            fillColor: ColorConstant.gray100,
                                                                            hintText: 'PASSWORD',
                                                                            border: OutlineInputBorder(
                                                                              borderRadius: BorderRadius.circular(15),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),

                                                                  
                                                                    CustomButton(
                                                                        height: getVerticalSize(
                                                                            54),
                                                                        text: "lbl_login"
                                                                            .tr,
                                                                        margin: getMargin(
                                                                            top: 60
                                                                            ),
                                                                        variant:
                                                                            ButtonVariant
                                                                                .FillLightblue800,
                                                                        padding:
                                                                            ButtonPadding
                                                                                .PaddingAll12,
                                                                        fontStyle:
                                                                            ButtonFontStyle
                                                                                .CenturyGothic24,
                                                                        onTap:
                                                                            () {
                                                                          onTapLogin(
                                                                              context);
                                                                        }),
                                                                        CustomButton(
                                                                        height: getVerticalSize(
                                                                            54),
                                                                        text: "SIGN UP"
                                                                            .tr,
                                                                        margin: getMargin(
                                                                            top: 60
                                                                            ),
                                                                        variant:
                                                                            ButtonVariant
                                                                                .FillLightblue800,
                                                                        padding:
                                                                            ButtonPadding
                                                                                .PaddingAll12,
                                                                        fontStyle:
                                                                            ButtonFontStyle
                                                                                .CenturyGothic24,
                                                                        onTap:
                                                                            () {
                                                                          onTapLogin(
                                                                              context);
                                                                        }),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 27),
                                                                            child: Text("msg_forgot_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtCenturyGothic15)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment(-0.999,0.9),
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 55,
                                                                      top: 12,
                                                                      right: 55,
                                                                      bottom:
                                                                          12),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack9003f1,
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
                                                                    Text(
                                                                        "lbl_student"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular20)
                                                                  ]))),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  57),
                                                          width:
                                                              getHorizontalSize(
                                                                  208),
                                                          text:
                                                              "lbl_faculty".tr,
                                                          variant: ButtonVariant
                                                              .OutlineBlack9003f,
                                                          shape: ButtonShape
                                                              .Square,
                                                          padding: ButtonPadding
                                                              .PaddingAll12,
                                                          onTap: () {
                                                            onTapFaculty(
                                                                context);
                                                          },
                                                          alignment: Alignment(1,0.9),
                                                              ),
                                                    ]))),
                                        SizedBox(
                                          width:275,
                                          child: Align(
                                              alignment: Alignment(0, 0),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: ColorConstant.gray100,
                                                  hintText: 'COLLEGE ID',
                                                  border: OutlineInputBorder(
                                                    borderRadius:BorderRadius.circular(15),
                                                  )
                                                ),
                                              ),
                                            ),
                                        ),



                                      ]))))
                    ]))));
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentHomeContainerScreen,
    );
  }

  onTapFaculty(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.facultyLoginScreen,
    );
  }
}
