import 'package:flutter/material.dart';
import 'package:voice/presentation/splash_screen/splash_screen.dart';
import 'package:voice/presentation/new_general_screen/new_general_screen.dart';
import 'package:voice/presentation/new_general_one_screen/new_general_one_screen.dart';
import 'package:voice/presentation/general_page_screen/general_page_screen.dart';
import 'package:voice/presentation/personal_page_one_screen/personal_page_one_screen.dart';
import 'package:voice/presentation/new_personal_screen/new_personal_screen.dart';
import 'package:voice/presentation/new_personal_one_screen/new_personal_one_screen.dart';
import 'package:voice/presentation/student_login_screen/student_login_screen.dart';
import 'package:voice/presentation/student_home_container_screen/student_home_container_screen.dart';
import 'package:voice/presentation/open_page_screen/open_page_screen.dart';
import 'package:voice/presentation/new_open_one_screen/new_open_one_screen.dart';
import 'package:voice/presentation/new_open_screen/new_open_screen.dart';
import 'package:voice/presentation/general_page_one_screen/general_page_one_screen.dart';
import 'package:voice/presentation/personal_page_screen/personal_page_screen.dart';
import 'package:voice/presentation/faculty_login_screen/faculty_login_screen.dart';
import 'package:voice/presentation/faculty_home_screen/faculty_home_screen.dart';
import 'package:voice/presentation/open_page_one_screen/open_page_one_screen.dart';
import 'package:voice/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String newGeneralScreen = '/new_general_screen';

  static const String newGeneralOneScreen = '/new_general_one_screen';

  static const String generalPageScreen = '/general_page_screen';

  static const String personalPageOneScreen = '/personal_page_one_screen';

  static const String newPersonalScreen = '/new_personal_screen';

  static const String newPersonalOneScreen = '/new_personal_one_screen';

  static const String studentLoginScreen = '/student_login_screen';

  static const String studentHomePage = '/student_home_page';

  static const String studentHomeContainerScreen =
      '/student_home_container_screen';

  static const String openPageScreen = '/open_page_screen';

  static const String newOpenOneScreen = '/new_open_one_screen';

  static const String newOpenScreen = '/new_open_screen';

  static const String generalPageOneScreen = '/general_page_one_screen';

  static const String personalPageScreen = '/personal_page_screen';

  static const String facultyLoginScreen = '/faculty_login_screen';

  static const String facultyHomeScreen = '/faculty_home_screen';

  static const String openPageOneScreen = '/open_page_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        newGeneralScreen: NewGeneralScreen.builder,
        newGeneralOneScreen: NewGeneralOneScreen.builder,
        generalPageScreen: GeneralPageScreen.builder,
        personalPageOneScreen: PersonalPageOneScreen.builder,
        newPersonalScreen: NewPersonalScreen.builder,
        newPersonalOneScreen: NewPersonalOneScreen.builder,
        studentLoginScreen: StudentLoginScreen.builder,
        studentHomeContainerScreen: StudentHomeContainerScreen.builder,
        openPageScreen: OpenPageScreen.builder,
        newOpenOneScreen: NewOpenOneScreen.builder,
        newOpenScreen: NewOpenScreen.builder,
        generalPageOneScreen: GeneralPageOneScreen.builder,
        personalPageScreen: PersonalPageScreen.builder,
        facultyLoginScreen: FacultyLoginScreen.builder,
        facultyHomeScreen: FacultyHomeScreen.builder,
        openPageOneScreen: OpenPageOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
