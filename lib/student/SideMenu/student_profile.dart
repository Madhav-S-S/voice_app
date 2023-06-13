
import 'package:flutter/material.dart';
import 'package:voice/student/SideMenu/NavBar.dart';
import 'package:voice/utils/color_utils.dart';

class studentProfile extends StatefulWidget {
  const studentProfile({Key? key}) : super(key: key);

  @override
  _studentProfileState createState() => _studentProfileState();
}

class _studentProfileState extends State<studentProfile> {
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
      body: Container(
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
        )
      ),
    );
  }
}
