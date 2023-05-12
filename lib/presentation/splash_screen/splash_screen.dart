import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray900,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 98, right: 98),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVoiceicon,
                            height: getSize(205),
                            width: getSize(205)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(bottom: 3),
                                child: Text("lbl_voice".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular64)))
                      ]))));
    });
  }
}
