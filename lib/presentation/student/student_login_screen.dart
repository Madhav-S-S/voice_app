import 'package:firebase_auth/firebase_auth.dart';
import 'package:voice/reusable_widgets/reusable_widget.dart';
import 'package:voice/presentation/student/student_home.dart';
import 'package:voice/presentation/student/signup_screen.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/utils/image_constant.dart';
import 'package:voice/presentation/faculty/faculty_login_screen.dart';

class StudentSignInScreen extends StatefulWidget {
  const StudentSignInScreen({Key? key}) : super(key: key);

  @override
  _StudentSignInScreenState createState() => _StudentSignInScreenState();
}

class _StudentSignInScreenState extends State<StudentSignInScreen> {
  int _currentIndex = 0;
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("00308F"),
          hexStringToColor("9546C4"),
          hexStringToColor("001C2E")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20,100, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget(ImageConstant.imgVoiceicon),
               
                Text("VOICE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontFamily: "Poppins",
                        )),
                         const SizedBox(
                  height: 30,
                ),
                reusableTextField("SAINTGITS MAIL ID", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("PASSWORD", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FacultySignInScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Color(0xff001C2E),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.purple[300],
        //create an onTap function to navigate to faculty_login_screen.dart
        onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
        },
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 40,),
              label: "STUDENT",
              backgroundColor: Color(0xff001C2E),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined,size:40),
              label: "FACULTY",
              backgroundColor: Color(0xff23132E),
          ),
        ],
      ),
    );
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
