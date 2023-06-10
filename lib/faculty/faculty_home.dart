import 'package:voice/faculty/facNavBar.dart';
import 'package:voice/faculty/fac_open_complaints.dart';
import 'package:voice/faculty/faculty_general.dart';
import 'package:voice/faculty/personal/faculty_personal.dart';
import 'package:voice/student/NavBar.dart';
import 'package:voice/student/general_complaints.dart';
import 'package:voice/student/open_complaints.dart';
import 'package:voice/student/student_personal/personal_complaints.dart';
import 'package:voice/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:voice/core/utils/image_constant.dart';

class facultyHomeScreen extends StatefulWidget {
  const facultyHomeScreen({Key? key}) : super(key: key);

  @override
  _facultyHomeScreenState createState() => _facultyHomeScreenState();
}

class _facultyHomeScreenState extends State<facultyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer : facNavBar(),
      appBar: AppBar(
      backgroundColor: facColor,
        centerTitle: true,
        title: const Text(
          "FACULTY HOME",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
      body:Container(
        color:voiceBlue,
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              //make border radius circular only at the top
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(colors: [
            hexStringToColor("8a2be2"),
            hexStringToColor("00308F"),
            hexStringToColor("001C2E")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                children: <Widget>[
                  SizedBox(height :10),
                  Text("Select the Complaint Type",
                    style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400,fontFamily: "Poppins")
                  ),
                  SizedBox(height:20),
                  GestureDetector(
                    onTap: (){
      
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>facultyGeneral()));
                    },
                    child: Container(height:150,width:1000,
                        //make the container half transparent
                        child: Center(
                          child: Text("GENERAL",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize:30,fontFamily: "Poppins",color: Colors.white),
                          ),
                        ),
                     decoration: BoxDecoration(
                                //make the color of the container transparent
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                    )
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>facOpenComplaints()));
                    },
                    child: Container(height:150,width:1000,
                        child: Center(
                          child: Text("OPEN",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize:30,fontFamily: "Poppins",color: Colors.white),
                          ),
                        ),
                     decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                    )
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>facultyPersonal()));
                    },
                    child: Container(height:150,width:1000,
                        child: Center(
                          child: Text("PERSONAL",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize:30,fontFamily: "Poppins",color: Colors.white),
                          ),
                        ),
                     decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15),
                    )
                    ),
                  ),
                  SizedBox(
                        height: 40,
                      ),
                      //increase the width of the MaterialButton below
                ],
              ),
            ))),
      ),
    );
  }
}
