import 'package:voice/presentation/student_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(0, 28, 46, 1),


        centerTitle: true,
        title: const Text(
          "HOME",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
      body:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("ffffff"),
            hexStringToColor("ffffff"),
            hexStringToColor("318CE7")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: <Widget>[
                SizedBox(height :10),
                Text("Select the Complaint Type",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: "Poppins")
                ),
                SizedBox(height:20),
                Container(height:150,width:1000,
                    child: Text("GENERAL",
                      textAlign: TextAlign.center,
                  ),
                 decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                    )
                  ]
                )
                ),
                SizedBox(height: 30,),
                Container(height:150,width:1000,
                 decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                    )
                  ]
                )
                ),
                SizedBox(height: 30),
                Container(height:150,width:1000,
                 decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                    )
                  ]
                )
                )
                
              ],
            ),
          ))),
    );
  }
}
