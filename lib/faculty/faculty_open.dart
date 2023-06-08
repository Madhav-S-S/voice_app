import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:voice/faculty/fac_postcard.dart';
import 'package:voice/faculty/faculty_home.dart';
import 'package:voice/methods/firestore_methods.dart';
import 'package:voice/reusable_widgets/gen_stud_postcard.dart';
import 'package:voice/student/draft_general.dart';
import 'package:voice/student/draft_open.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/utils/color_utils.dart';

class facultyOpen extends StatefulWidget {
  const facultyOpen({Key? key}) : super(key: key);

  @override
  _facultyOpenState createState() => _facultyOpenState();
}

class _facultyOpenState extends State<facultyOpen> {
  var branch2;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((docSnapshot) => {branch2 = docSnapshot.data()?['branch']});
    String branch3 = "${branch2}_complaints";
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => facultyHomeScreen()))),
        //add an icon to right side of appbar
        backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "OPEN",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "Poppins"),
        ),
      ),
      body: Container(
        color: voiceBlue,
        child: Container(
          decoration: BoxDecoration(
              //make border radius circular only at the top
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(colors: [
                hexStringToColor("8a2be2"),
                hexStringToColor("00308F"),
                hexStringToColor("001C2E")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: StreamBuilder(
            //order the complaints by date published
            stream: FirebaseFirestore.instance
                //check branch of the current user and assign it to variable 'branch'

                .collection('csb2024_complaints')
                .orderBy('upvotes', descending: true)
                .snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) => facultyPostCard(
                  snap: snapshot.data!.docs[index].data(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
//create a home page with reddit feed like design