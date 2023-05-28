import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/student/student_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:voice/student/signup_screen.dart';
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
      String initialRoute = user != null ? '/home' : '/login';
      Navigator.of(context).pushReplacementNamed(initialRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return AnimatedSplashScreen(
      splash: 'assets/images/img_voiceicon.png',
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale,
      backgroundColor: Colors.black12,
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
        '/home': (context) => studentHomeScreen(),
      },
      // home: user!=null?studentHomeScreen():LoginPage(),
    );
  }
}
