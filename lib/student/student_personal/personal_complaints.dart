import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:voice/student/gen_stud_postcard.dart';
import 'package:voice/student/draft_general.dart';
import 'package:voice/student/draft_personal.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/student/student_personal/student_pers_postcard.dart';
import 'package:voice/utils/color_utils.dart';

class personalComplaints extends StatefulWidget {
  const personalComplaints({Key? key}) : super(key: key);

  @override
  _personalComplaintsState createState() => _personalComplaintsState();
}

class _personalComplaintsState extends State<personalComplaints> {
  var advisor;

  
  @override
  Widget build(BuildContext context) {
    String email = FirebaseAuth.instance.currentUser!.email!;
    return Scaffold(
      appBar: AppBar(
            leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>studentHomeScreen()))),
        //add an icon to right side of appbar
        actions: [
          IconButton(
            //on pressed function to navigate to the draft page of general complaints
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>draftPersonal()));
            },
            //icon for a pen to write a new complaint
            icon: Icon(Icons.create_outlined),
          ),
        ],
      backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "PERSONAL",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
      body: Container(
        color:voiceBlue,
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
            stream: FirebaseFirestore.instance.collection('personal_complaints').where('student',isEqualTo: email).snapshots(),
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) => studPersPostCard(
                  snap : snapshot.data!.docs[index].data(),
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
