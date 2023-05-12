import '../open_page_screen/widgets/openpage_item_widget.dart';
import 'bloc/open_page_bloc.dart';
import 'models/open_page_model.dart';
import 'models/openpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_subtitle.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class OpenPageScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OpenPageBloc>(
        create: (context) =>
            OpenPageBloc(OpenPageState(openPageModelObj: OpenPageModel()))
              ..add(OpenPageInitialEvent()),
        child: OpenPageScreen());
  }

  @override
  Widget build(BuildContext context) {
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
                      onTapBackbuttonwhite2(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_open_complaints".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      imagePath: ImageConstant.imgEditwhitebutton,
                      margin:
                          getMargin(left: 24, top: 27, right: 24, bottom: 43),
                      onTap: () {
                        onTapEditwhitebutton2(context);
                      })
                ],
                styleType: Style.bgFillGray900),
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
                                  child: Container(
                                      padding: getPadding(top: 18, bottom: 18),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder25),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            BlocSelector<
                                                    OpenPageBloc,
                                                    OpenPageState,
                                                    OpenPageModel?>(
                                                selector: (state) =>
                                                    state.openPageModelObj,
                                                builder: (context,
                                                    openPageModelObj) {
                                                  return ListView.builder(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: openPageModelObj
                                                              ?.openpageItemList
                                                              .length ??
                                                          0,
                                                      itemBuilder:
                                                          (context, index) {
                                                        OpenpageItemModel
                                                            model =
                                                            openPageModelObj
                                                                        ?.openpageItemList[
                                                                    index] ??
                                                                OpenpageItemModel();
                                                        return OpenpageItemWidget(
                                                            model);
                                                      });
                                                }),
                                            Container(
                                                height: getVerticalSize(236),
                                                width: double.maxFinite,
                                                margin: getMargin(bottom: 116),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
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
                                                                            top:
                                                                                5,
                                                                            bottom:
                                                                                5),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillCyan900,
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgAvatar1, height: getSize(44), width: getSize(44), radius: BorderRadius.circular(getHorizontalSize(22)), margin: getMargin(top: 10, bottom: 8)),
                                                                              Container(width: getHorizontalSize(319), margin: getMargin(bottom: 6), child: Text("msg_no_modern_structure".tr.toUpperCase(), maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPoppinsRegular20))
                                                                            ])),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            352),
                                                                        margin: getMargin(
                                                                            left:
                                                                                13,
                                                                            top:
                                                                                15,
                                                                            right:
                                                                                48),
                                                                        child: Text(
                                                                            "msg_vs_code_is_a_widely"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtPoppinsLight16)),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Padding(
                                                                            padding: getPadding(top: 26, right: 13, bottom: 6),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgUpvote2, height: getVerticalSize(34), width: getHorizontalSize(30)),
                                                                              Padding(padding: getPadding(left: 20, top: 2, bottom: 8), child: Text("lbl_25".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight16)),
                                                                              CustomImageView(imagePath: ImageConstant.imgUpvote1, height: getVerticalSize(34), width: getHorizontalSize(30), margin: getMargin(left: 6))
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
                                                    ]))
                                          ]))),
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
                                                                      .fillCyan900,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgAvatar21,
                                                                        height: getSize(
                                                                            44),
                                                                        width: getSize(
                                                                            44),
                                                                        margin: getMargin(
                                                                            top:
                                                                                1)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                3,
                                                                            bottom:
                                                                                11),
                                                                        child: Text(
                                                                            "msg_no_fans_in_middle"
                                                                                .tr
                                                                                .toUpperCase(),
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular20))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 13,
                                                                      top: 14),
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
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          107),
                                                                  margin: getMargin(
                                                                      top: 78,
                                                                      right: 13,
                                                                      bottom:
                                                                          6),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgOptions1,
                                                                            height: getVerticalSize(23),
                                                                            width: getHorizontalSize(20),
                                                                            alignment: Alignment.topRight,
                                                                            margin: getMargin(top: 3)),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
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
                                                alignment: Alignment.bottomLeft,
                                                margin: getMargin(left: 7))
                                          ])))
                            ]))))));
  }

  onTapBackbuttonwhite2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentHomeContainerScreen,
    );
  }

  onTapEditwhitebutton2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newOpenOneScreen,
    );
  }
}
