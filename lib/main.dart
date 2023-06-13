import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/faculty/faculty_home.dart';
import 'package:voice/faculty/faculty_sidemenu/faculty_profile.dart';
import 'package:voice/student/SideMenu/student_profile.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/login.dart';
import 'package:flutter/material.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:page_transition/page_transition.dart';//test modification for showing git push
//test modification for showing git push

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulating a delay for the splash screen
    Future.delayed(Duration(seconds: 2), () async {
      // Check if the user is logged in
      User? user = FirebaseAuth.instance.currentUser;
      CollectionReference ref = FirebaseFirestore.instance.collection('users');
      if (user != null) {
        DocumentSnapshot doc = await ref.doc(user.uid).get();
        if (doc.exists) {
          if (doc.get('role') == 'Student') {
            Navigator.of(context).pushReplacementNamed('/studenthome');
          } 
          else if(doc.get('role') == 'Teacher'){
            Navigator.of(context).pushReplacementNamed('/facultyhome');
          }
        } 
        else {
          Navigator.of(context).pushReplacementNamed('/login');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return AnimatedSplashScreen(
      splash: 'assets/images/img_voiceicon.png',
      splashIconSize: 150,
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      backgroundColor: voiceBlue,
    );
  }
}


class _MyAppState extends State<MyApp> {
  User? user;
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    print(user?.uid.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voice',
      theme: ThemeData.dark(),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/studenthome': (context) => studentHomeScreen(),
        '/facultyhome': (context) => facultyHomeScreen(),
        '/studentProfile':(context) => studentProfile(),
        '/facultyProfile':(context) => facultyProfile(),
      },
      // home: user!=null?studentHomeScreen():LoginPage(),
    );
  }
}
