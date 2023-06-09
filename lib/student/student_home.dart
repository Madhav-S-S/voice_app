
import 'package:voice/student/general_complaints.dart';
import 'package:voice/student/open_complaints.dart';
import 'package:voice/student/personal_complaints.dart';
import 'package:voice/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:voice/core/utils/image_constant.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

class studentHomeScreen extends StatefulWidget {
  const studentHomeScreen({Key? key}) : super(key: key);

  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<studentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              onTap: () {
                //TODO: Go to Home page
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                //TODO: Go to About page
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                //TODO: Go to Contact page
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        //create a dashboard app bar
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return stud_dashboard();
                  });
            },
            //icon for bashboard options
            icon: Icon(Icons.space_dashboard_rounded),
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        leading: null,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "STUDENT HOME",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "Poppins"),
        ),
      ),
      body: Container(
        color: voiceBlue,
        child: Container(
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
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Text("Select the Complaint Type",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins")),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => generalComplaints()));
                    },
                    child: Container(
                        height: 150,
                        width: 1000,
                        //make the container half transparent
                        child: Center(
                          child: Text(
                            "GENERAL",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          //make the color of the container transparent
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => openComplaints()));
                    },
                    child: Container(
                        height: 150,
                        width: 1000,
                        child: Center(
                          child: Text(
                            "OPEN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => personalComplaints()));
                    },
                    child: Container(
                        height: 150,
                        width: 1000,
                        child: Center(
                          child: Text(
                            "PERSONAL",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Poppins",
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //increase the width of the MaterialButton below
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width - 100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    height: 50,
                    onPressed: () {
                      FirebaseAuth.instance.signOut().then((value) {
                        print("Signed Out");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      });
                    },
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ))),
      ),
    );
  }
  stud_dashboard(){
    //align the container to the right 
  return Container(
    child: AlertDialog(
      title: Text("Dashboard"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Personal Complaints"),
            onTap: () {
              Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (context) => personalComplaints()));
            },
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("General Complaints"),
            onTap: () {
              Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (context) => generalComplaints()));
            },
          ),
          ListTile(
            leading: Icon(Icons.open_in_new),
            title: Text("Open Complaints"),
            onTap: () {
              Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (context) => openComplaints()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                  context as BuildContext, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    ),
  );
}
}
