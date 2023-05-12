import 'bloc/student_dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/custom_button.dart';

class StudentDashboardDraweritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: getHorizontalSize(328),
            padding: getPadding(top: 3, bottom: 3),
            decoration: AppDecoration.fillGray900b0,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: getPadding(top: 20, right: 27),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(top: 6),
                                child: Text("lbl_madhav_s_s".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular20)),
                            CustomImageView(
                                imagePath: ImageConstant.imgProfileicon1,
                                height: getSize(30),
                                width: getSize(30),
                                margin: getMargin(left: 49, bottom: 6),
                                onTap: () {
                                  onTapImgProfileiconone(context);
                                })
                          ]))),
              Container(
                  height: getSize(205),
                  width: getSize(205),
                  margin: getMargin(top: 15),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgProfile21,
                        height: getSize(205),
                        width: getSize(205),
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgPencilvectoriconpng296528,
                        height: getSize(33),
                        width: getSize(33),
                        radius: BorderRadius.circular(getHorizontalSize(16)),
                        alignment: Alignment.bottomRight,
                        margin: getMargin(right: 38, bottom: 16))
                  ])),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: getHorizontalSize(226),
                      margin: getMargin(top: 16, right: 40),
                      child: Text("msg_college_mail".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsLight16WhiteA700))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: getPadding(left: 61, top: 13),
                      child: Text("msg_private_id_user_2255".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsLight16WhiteA700))),
              CustomButton(
                  height: getVerticalSize(85),
                  text: "lbl_help_support".tr,
                  margin: getMargin(top: 17),
                  shape: ButtonShape.Square),
              CustomButton(
                  height: getVerticalSize(85),
                  text: "lbl_settings".tr,
                  margin: getMargin(top: 6),
                  shape: ButtonShape.Square),
              CustomButton(
                  height: getVerticalSize(85),
                  text: "lbl_log_out".tr,
                  margin: getMargin(top: 6),
                  shape: ButtonShape.Square,
                  onTap: () {
                    onTapLogout(context);
                  }),
              Container(
                  height: getVerticalSize(126),
                  width: getHorizontalSize(94),
                  margin: getMargin(top: 17),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVoiceicon,
                        height: getSize(94),
                        width: getSize(94),
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: getPadding(right: 8),
                            child: Text("lbl_voice".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular24)))
                  ])),
              Padding(
                  padding: getPadding(top: 8),
                  child: Text("msg_made_with_in_saintgits".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBerlinSansFBReg16)),
              Container(
                  height: getVerticalSize(21),
                  width: getHorizontalSize(91),
                  margin: getMargin(top: 32),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text("msg_version_0_0_11".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsLight14)),
                    Align(
                        alignment: Alignment.center,
                        child: Text("msg_version_0_0_11".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsLight14))
                  ]))
            ])));
  }

  onTapImgProfileiconone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentHomeContainerScreen,
    );
  }

  onTapLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentLoginScreen,
    );
  }
}
