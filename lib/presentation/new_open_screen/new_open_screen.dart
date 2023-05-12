import 'bloc/new_open_bloc.dart';
import 'models/new_open_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class NewOpenScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NewOpenBloc>(
        create: (context) =>
            NewOpenBloc(NewOpenState(newOpenModelObj: NewOpenModel()))
              ..add(NewOpenInitialEvent()),
        child: NewOpenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewOpenBloc, NewOpenState>(builder: (context, state) {
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
                                  leadingWidth: 44,
                                  leading: AppbarImage(
                                      height: getSize(21),
                                      width: getSize(21),
                                      imagePath: ImageConstant.imgCross1,
                                      margin: getMargin(
                                          left: 23, top: 29, bottom: 43),
                                      onTap: () {
                                        onTapCrossone5(context);
                                      }),
                                  title: AppbarSubtitle1(
                                      text: "msg_new_open_complaint".tr,
                                      margin: getMargin(left: 44)),
                                  styleType: Style.bgFillGray200),
                              CustomImageView(
                                  imagePath: ImageConstant.imgOptions1,
                                  height: getVerticalSize(18),
                                  width: getHorizontalSize(19),
                                  margin: getMargin(top: 7, right: 29))
                            ]),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    padding: getPadding(top: 24, bottom: 24),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 34),
                                              child: Text("lbl_title".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium26)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 34, top: 25),
                                              child: Text("lbl_body_text".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsLight16)),
                                          Container(
                                              width: double.maxFinite,
                                              margin: getMargin(
                                                  top: 620, bottom: 7),
                                              padding: getPadding(all: 26),
                                              decoration: AppDecoration
                                                  .outlineBlack9003f,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgLink1,
                                                        height: getSize(25),
                                                        width: getSize(25),
                                                        margin: getMargin(
                                                            left: 8,
                                                            top: 5,
                                                            bottom: 4)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGalleryicon1,
                                                        height:
                                                            getVerticalSize(33),
                                                        width:
                                                            getHorizontalSize(
                                                                39),
                                                        margin: getMargin(
                                                            left: 29, top: 1)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgHashtag1,
                                                        height:
                                                            getVerticalSize(27),
                                                        width:
                                                            getHorizontalSize(
                                                                26),
                                                        margin: getMargin(
                                                            left: 29,
                                                            top: 4,
                                                            bottom: 3)),
                                                    Spacer(),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapToggle(context);
                                                        },
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    33),
                                                            width:
                                                                getHorizontalSize(
                                                                    57),
                                                            margin: getMargin(
                                                                top: 1),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(26),
                                                                          width: getHorizontalSize(57),
                                                                          margin: getMargin(top: 3),
                                                                          decoration: BoxDecoration(color: ColorConstant.lightBlue800, borderRadius: BorderRadius.circular(getHorizontalSize(13)), boxShadow: [
                                                                            BoxShadow(
                                                                                color: ColorConstant.black9003f,
                                                                                spreadRadius: getHorizontalSize(2),
                                                                                blurRadius: getHorizontalSize(2),
                                                                                offset: Offset(0, 0))
                                                                          ]))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgAnonymityicon1,
                                                                      height:
                                                                          getSize(
                                                                              33),
                                                                      width:
                                                                          getSize(
                                                                              33),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight)
                                                                ]))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 49,
                                                            top: 1,
                                                            bottom: 3),
                                                        child: Text(
                                                            "lbl_post".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsLight20BlueA700))
                                                  ]))
                                        ]))))
                      ]))));
    });
  }

  onTapCrossone5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalPageOneScreen,
    );
  }

  onTapToggle(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newOpenOneScreen,
    );
  }
}
