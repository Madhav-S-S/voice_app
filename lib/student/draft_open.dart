import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:voice/student/general_complaints.dart';
import 'package:voice/student/open_complaints.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:voice/reusable_widgets/gen_stud_postcard.dart';

class draftOpen extends StatefulWidget {
  const draftOpen({Key? key}) : super(key: key);

  @override
  _draftOpenState createState() => _draftOpenState();
}

class _draftOpenState extends State<draftOpen> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  static var branchfeed;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: false,
          backgroundColor: Colors.black,
          title: const Text(
            "New Complaint (open)",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  if (_titleController.text.length == 0 ||
                      _descriptionController.text.length == 0) {
                    print("Title Required");
                  } else {
                    addComplaintToFirestore(
                        _titleController.text, _descriptionController.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => openComplaints()));
                  }
                },
                child: const Text(
                  "POST",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ))
          ],
        ),
        body: Container(
          //change color of the container
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                    //put border between title and description
                    border: InputBorder.none,
                  ),
                  cursorHeight: 30,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _descriptionController,
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  addComplaintToFirestore(String title, String description) async {
    var branch = (await FirebaseFirestore.instance
            .collection('users')
            .doc(_auth.currentUser?.uid)
            .get())
        .get('branch');
        branchfeed = branch;
    var user = _auth.currentUser;
    String postId = Uuid().v4();
    //get branch attribute from the current user from firestore
    //String branch = (await FirebaseFirestore.instance.collection('users').doc(user?.uid).get()).get('branch');
    DocumentReference docRef = FirebaseFirestore.instance
        .collection('${branch}_complaints')
        .doc(postId);
    print('${branch}_complaints');
    docRef.set({
      'title': title,
      'description': description,
      'userId': user?.uid,
      'datePublished': DateTime.now(),
      'postId': postId,
      //set the value of 'upvotes' in firestore to an empty array
      'upvotes': [],
      'downvotes': [],
      'type': '${branch}_complaints',
      //'branch': branch,
    });
  }
}
