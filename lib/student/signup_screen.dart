import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:voice/student/student_login_screen.dart';
import 'package:voice/utils/color_utils.dart';
//import 'login.dart';
// import 'model.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  _SignUpState();

  bool showProgress = false;
  bool visible = false;

  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();
  final TextEditingController name = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;
  File? file;
  var roll = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','18','19','20','21','22','23','24','25','26','27','28','29','30','31',
  '32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62',
  '63','64','65','66','67','68','69','70','71','72','73','74','75','76','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93',
  '94','95','96','97','98','99','100','101','102','103','104','105','106','108','109','110','111','112','113','114','115','116','117','118','119','120'];
  var options = [
    'Student',
    'Teacher',
  ];
  var _currentItemSelected = "Student";
  var role = "Student";
  var _currentItemSelected2 = "1";
  var rollNo = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("00308F"),
          hexStringToColor("9546C4"),
          hexStringToColor("001C2E")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Register Now",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0x77ffffff),
                            hintText: 'SAINTGITS MAIL ID',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white38
                            ),
                            enabled: true,
                            contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(20),
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
                          onChanged: (value) {},
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: _isObscure,
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            filled: true,
                            fillColor: Color(0x77ffffff),
                            hintText: 'PASSWORD',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white38,
                            ),
                            enabled: true,
                            contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(20),
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
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: _isObscure2,
                          controller: confirmpassController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure2
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                }),
                            filled: true,
                            fillColor:Color(0x77ffffff),
                            hintText: 'CONFIRM PASSWORD',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                              fontFamily: 'Poppins',
                            ),
                            enabled: true,
                            contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(20),
                            ),
                          ),
                          validator: (value) {
                            if (confirmpassController.text !=
                                passwordController.text) {
                              return "Password did not match";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Role : ",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Poppins'
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                              //make the color of the container transparent
                              color: Color(0x33FFFFFF),
                              borderRadius: BorderRadius.circular(15),
                              ),
                              child: DropdownButton<String>(
                                dropdownColor: voiceBlue,
                                isDense: true,
                                isExpanded: false,
                                iconEnabledColor: Colors.white,
                                focusColor: Colors.white,
                                items: options.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(
                                      dropDownStringItem,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValueSelected) {
                                  setState(() {
                                    _currentItemSelected = newValueSelected!;
                                    role = newValueSelected;
                                  });
                                },
                                value: _currentItemSelected,
                              ),
                            ),
                            //if _currentItemSelected == "Student" then show the department dropdown
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        if (_currentItemSelected == "Student")
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Roll Number : ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      //make the color of the container transparent
                                      color: Color(0x33FFFFFF),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: DropdownButton<String>(
                                      dropdownColor: voiceBlue,
                                      isDense: true,
                                      isExpanded: false,
                                      iconEnabledColor: Colors.white,
                                      focusColor: Colors.white,
                                      items: roll.map((String dropDownStringItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(
                                            dropDownStringItem,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (newValueSelected) {
                                        setState(() {
                                          _currentItemSelected2 =
                                              newValueSelected!;
                                          rollNo = newValueSelected;
                                        });
                                      },
                                      value: _currentItemSelected2,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          minWidth: MediaQuery.of(context).size.width-100,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          elevation: 5.0,
                          height: 50,
                          onPressed: () {
                            setState(() {
                              showProgress = true;
                              //split the string between '.' and '@' to get the branch
                            });
                            signUp(emailController.text,
                                passwordController.text, 
                                role);
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?",
                              style: TextStyle(color: Colors.white70,fontSize: 15)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                            child: const Text(
                              " Login",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signUp(String email, String password, String role) async {
    CircularProgressIndicator();
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email, role)})
          .catchError((e) {});
    }
  }

  postDetailsToFirestore(String email, String role) async {
    try{
    var user = _auth.currentUser;
    var branch = emailController.text.split('.')[1].split('@')[0];
    print(branch);
    CollectionReference ref = FirebaseFirestore.instance.collection('users');
    ref.doc(user!.uid).set({'email': emailController.text, 'role': role,'uid':user.uid,'rollNo':rollNo,'branch':branch});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
    }catch(e){
      print(e);
    }
  }
}
