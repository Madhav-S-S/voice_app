import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:voice/student/general_complaints.dart';
import 'package:voice/utils/color_utils.dart';

class draftGeneral extends StatefulWidget {
  const draftGeneral({Key? key}) : super(key: key);

  @override
  _draftGeneralState createState() => _draftGeneralState();
}

class _draftGeneralState extends State<draftGeneral> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
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
          "New Complaint",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          TextButton(onPressed: (){
            if(_titleController.text.length ==0){
              print("Title Required");
            }
            else{
                addComplaintToFirestore(_titleController.text, _descriptionController.text);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>generalComplaints()));
            }
          },
           child: const Text("Post",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold, fontSize: 16),))
        ],
      ),
      body:Container(
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
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 25),
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
                      border: InputBorder.none
                  ),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  addComplaintToFirestore(String title,String description) async {
    var user = _auth.currentUser;
    String postId = Uuid().v4();
    DocumentReference docRef = FirebaseFirestore.instance.collection('complaints').doc(postId);
    docRef.set({
    'title': title,
    'description': description,
    'userId': user?.uid,
    'postId': postId,
  });
  }
}