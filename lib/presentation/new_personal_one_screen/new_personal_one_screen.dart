import 'bloc/new_personal_one_bloc.dart';
import 'models/new_personal_one_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class NewPersonalOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NewPersonalOneBloc>(
        create: (context) => NewPersonalOneBloc(
            NewPersonalOneState(newPersonalOneModelObj: NewPersonalOneModel()))
          ..add(NewPersonalOneInitialEvent()),
        child: NewPersonalOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewPersonalOneBloc, NewPersonalOneState>(
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
                                  leadingWidth: 44,
                                  leading: AppbarImage(
                                      height: getSize(21),
                                      width: getSize(21),
                                      imagePath: ImageConstant.imgCross1,
                                      margin: getMargin(
                                          left: 23, top: 29, bottom: 43),
                                      onTap: () {
                                        onTapCrossone3(context);
                                      }),
                                  centerTitle: true,
                                  title: AppbarSubtitle1(
                                      text: "msg_new_personal_complaint".tr),
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
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 3),
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

  onTapCrossone3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalPageOneScreen,
    );
  }
}
