import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:voice/reusable_widgets/post_card.dart';
import 'package:voice/student/draft_general.dart';

class generalComplaints extends StatefulWidget {
  const generalComplaints({Key? key}) : super(key: key);

  @override
  _generalComplaintsState createState() => _generalComplaintsState();
}

class _generalComplaintsState extends State<generalComplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //add an icon to right side of appbar
        actions: [
          IconButton(
            //on pressed function to navigate to the draft page of general complaints
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>draftGeneral()));
            },
            //icon for a pen to write a new complaint
            icon: Icon(Icons.create_outlined),
          ),
        ],
      backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "GENERAL",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
      body: StreamBuilder(
        //order the complaints by date published
        stream: FirebaseFirestore.instance.collection('complaints').orderBy('upvotes',descending: true).snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) => PostCard(
              snap : snapshot.data!.docs[index].data(),
            ),
         
          );
        },
      ),
    );
  }
}
//create a home page with reddit feed like design
