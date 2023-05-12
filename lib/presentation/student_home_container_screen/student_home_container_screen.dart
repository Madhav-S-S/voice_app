import 'bloc/student_home_container_bloc.dart';
import 'models/student_home_container_model.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/app_export.dart';
import 'package:voice/presentation/student_home_page/student_home_page.dart';
import 'package:voice/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class StudentHomeContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<StudentHomeContainerBloc>(
        create: (context) => StudentHomeContainerBloc(StudentHomeContainerState(
            studentHomeContainerModelObj: StudentHomeContainerModel()))
          ..add(StudentHomeContainerInitialEvent()),
        child: StudentHomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentHomeContainerBloc, StudentHomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.studentHomePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeicon:
        return AppRoutes.studentHomePage;
      case BottomBarEnum.x512bbremovebgpreview:
        return "/";
      case BottomBarEnum.Pngwing1:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.studentHomePage:
        return StudentHomePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
