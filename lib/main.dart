import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/student/student_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:voice/student/signup_screen.dart';
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
      home: user!=null?studentHomeScreen():LoginPage(),
    );
  }
}