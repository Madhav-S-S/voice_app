
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:voice/student/SideMenu/NavBar.dart';
import 'package:voice/utils/color_utils.dart';

class studentProfile extends StatefulWidget {
  const studentProfile({Key? key}) : super(key: key);
  // get snap => null;
  @override
  _studentProfileState createState() => _studentProfileState();
}

class _studentProfileState extends State<studentProfile> {
  var email = FirebaseAuth.instance.currentUser!.email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        //create a dashboard app bar
        backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        // leading: null,
        // automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "PROFILE",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "Poppins"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: voiceBlue,
          child : Container(
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  //make border radius circular only at the top
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(colors: [
                    hexStringToColor("8a2be2"),
                    hexStringToColor("00308F"),
                    hexStringToColor("001C2E")
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_profile21.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "SAINTGITS MAIL ID : ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(44, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.email,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "$email"),
                ],
          )
        ),
        SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ADVISOR MAIL ID :",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(44, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.email,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "$email"),
                ],
          )
        ),
                ],

      ),
    ),
          ),
      ),
    );
  }
}
