import 'package:voice/student/student_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:voice/core/utils/image_constant.dart';

class studentHomeScreen extends StatefulWidget {
  const studentHomeScreen({Key? key}) : super(key: key);

  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<studentHomeScreen> {
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
                GestureDetector(
                  onTap: (){
                    print("clicked");
                  },
                  child: Container(height:150,width:1000,
                      child: Center(
                        child: Text("GENERAL",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize:30,fontFamily: "Poppins",color: Colors.white),
                        ),
                      ),
                   decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 114, 182,1),
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
                ),
                SizedBox(height: 30,),
                Container(height:150,width:1000,
                    child: Center(
                      child: Text("OPEN",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize:30,fontFamily: "Poppins",color: Colors.white),
                      ),
                    ),
                 decoration: BoxDecoration(
              color: Color.fromRGBO(0, 125, 200,1),
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
                    child: Center(
                      child: Text("PERSONAL",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize:30,fontFamily: "Poppins",color: Colors.white),
                      ),
                    ),
                 decoration: BoxDecoration(
              color: Color.fromRGBO(0, 134, 215,1),
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
                            FirebaseAuth.instance.signOut().then((value) {
                              print("Signed Out");
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => LoginPage()));
                            });
                          },
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.white,
                    ),
              ],
            ),
          ))),
    );
  }
}