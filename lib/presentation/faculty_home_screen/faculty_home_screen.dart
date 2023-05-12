import '../faculty_home_screen/widgets/facultyhome_item_widget.dart';
import 'bloc/faculty_home_bloc.dart';
import 'models/faculty_home_model.dart';
import 'models/facultyhome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/widgets/app_bar/appbar_image.dart';
import 'package:voice/widgets/app_bar/appbar_title.dart';
import 'package:voice/widgets/app_bar/custom_app_bar.dart';

class FacultyHomeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FacultyHomeBloc>(
      create: (context) => FacultyHomeBloc(FacultyHomeState(
        facultyHomeModelObj: FacultyHomeModel(),
      ))
        ..add(FacultyHomeInitialEvent()),
      child: FacultyHomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            94,
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_home".tr,
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                28,
              ),
              width: getHorizontalSize(
                27,
              ),
              imagePath: ImageConstant.imgWhitegearing1,
              margin: getMargin(
                left: 20,
                top: 27,
                right: 20,
                bottom: 39,
              ),
            ),
          ],
          styleType: Style.bgFillGray90003,
        ),
        body: Container(
          height: getVerticalSize(
            802,
          ),
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
                    bottom: 32,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 751,
                        ),
                        child: Text(
                          "lbl_complaint_type".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsLight24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: getVerticalSize(
                    796,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTransparentlogo738x414,
                        height: getVerticalSize(
                          738,
                        ),
                        width: getHorizontalSize(
                          414,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 28,
                            top: 20,
                            right: 31,
                            bottom: 128,
                          ),
                          child: BlocSelector<FacultyHomeBloc, FacultyHomeState,
                              FacultyHomeModel?>(
                            selector: (state) => state.facultyHomeModelObj,
                            builder: (context, facultyHomeModelObj) {
                              return ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      45,
                                    ),
                                  );
                                },
                                itemCount: facultyHomeModelObj
                                        ?.facultyhomeItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  FacultyhomeItemModel model =
                                      facultyHomeModelObj
                                              ?.facultyhomeItemList[index] ??
                                          FacultyhomeItemModel();
                                  return FacultyhomeItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
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
    );
  }
}
