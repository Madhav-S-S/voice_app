import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voice/faculty/faculty_home.dart';
import 'package:voice/reusable_widgets/reusable_widget.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/student/signup_screen.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:voice/core/utils/image_constant.dart';
//keep user logged in even after closing the app
import 'package:shared_preferences/shared_preferences.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _emailCorrect = 0;//means the email is not typed
  int _passwordCorrect = 0;//means the password is not typed
  bool _isLoading = false;
  bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
                  decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                hexStringToColor("00308F"),
                hexStringToColor("9546C4"),
                hexStringToColor("001C2E")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
            20,100, 20, 0),
                child: Column(     
                  children: <Widget>[
                     logoWidget(ImageConstant.imgVoiceicon),
                    Text(
                      "VOICE",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 55,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0x77ffffff),
                        hintText: 'SAINTGITS MAIL ID',
                        enabled: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(20),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(25),
                        ),
                      ),
                      validator: (value) {
                        if (value!.length == 0) {
                          return "Email cannot be empty";
                        }
                        if (!RegExp(
                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return ("Please enter a valid email");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        emailController.text = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _isObscure3,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure3
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure3 = !_isObscure3;
                              });
                            }),
                        filled: true,
                        fillColor: Color(0x77ffffff),
                        hintText: 'PASSWORD',
                        enabled: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: new BorderRadius.circular(20),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(25),
                        ),
                      ),
                      validator: (value) {
                        RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        }
                        if (!regex.hasMatch(value)) {
                          return ("please enter valid password min. 6 character");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        passwordController.text = value!;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                   
                    SizedBox(
                      height: 40,
                    ),
                    //increase the width of the MaterialButton below
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width-100,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      elevation: 5.0,
                      height: 50,
                      onPressed: () {
                        setState(() {
                          visible = true;
                        });
                        signIn(
                            emailController.text, passwordController.text);
                      },
                      child: !_isLoading
                      ? const Text(
                          'Log in',
                            style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        )
                      : const CircularProgressIndicator(
                          color: Colors.blue
                        ),
                      color: Colors.white,
                    ),
                    checkPassword(_passwordCorrect),
                    checkEmail(_emailCorrect),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
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
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  

  void route() {
    User? user = FirebaseAuth.instance.currentUser;
    var kk = FirebaseFirestore.instance
            .collection('users')
            .doc(user!.uid)
            .get()
            .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('role') == "Teacher") {
           Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  facultyHomeScreen(),
          ),
        );
        }else{
          Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  studentHomeScreen(),
          ),
        );
        }
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  void signIn(String email, String password) async {
    setState(() {
      _isLoading = true;
    });
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        setState(() {
          _isLoading = false;
        });
        _passwordCorrect = 1;//means password is correct
        route();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          _emailCorrect = 2;//means email is not correct
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          _passwordCorrect = 2;//means password is not correct
          //display in the screen that password is wrong
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}

checkPassword(_passwordCorrect) {
  if (_passwordCorrect == 2) {
    return Text(
      "Password is incorrect",
      style: TextStyle(color: Colors.red),
    );
  } else {
    return Text("");
  }
}
checkEmail(_emailCorrect) {
  if (_emailCorrect == 2) {
    return Text(
      "No user found for that email",
      style: TextStyle(color: Colors.red),
    );
  } else {
    return Text("");
  }
}





