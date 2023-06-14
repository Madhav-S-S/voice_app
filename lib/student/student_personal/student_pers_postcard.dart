import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:voice/methods/firebase_methods.dart';
import 'package:voice/reusable_widgets/reusable_widget.dart';
class studPersPostCard extends StatefulWidget {
    final snap;
  const studPersPostCard({
    Key? key,
    required this.snap,
  }) : super(key: key);
    

  @override
  State<studPersPostCard> createState() => _studPersPostCardState();
}

class _studPersPostCardState extends State<studPersPostCard> {
    final database = FirebaseFirestore.instance;
     deletePost(String postId) async {
    try {
      await FireStoreMethods().deletePost(postId);
    } catch (err) {
      showSnackBar(
        context,
        err.toString(),
      );
    }
  }
  var user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      // boundary needed for web
      constraints: const BoxConstraints(
        maxWidth: 700,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      //border color set
      decoration: BoxDecoration(
        //make the border circular
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          // HEADER SECTION OF THE POST
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ).copyWith(right: 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          this.widget.snap['title'].toString(),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                  if (widget.snap['userId'] == user!.uid)
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shadowColor: Color.fromARGB(75, 0, 144, 255),
                          backgroundColor: Color.fromARGB(225, 0, 0, 0),
                          title: const Text('Delete Post'),
                          content: const Text(
                              'Are you sure you want to delete this post?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                deletePost(
                                  widget.snap['postId'].toString(),
                                );
                                Navigator.of(context).pop();
                              },
                              child: const Text('Delete'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
          // IMAGE SECTION OF THE POST
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: SizedBox(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  this.widget.snap['description'].toString(),
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          // LIKE, COMMENT SECTION OF THE POST
          Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.flag,
                ),
                onPressed: () {}),
                Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 24,
            ),
            child: SizedBox(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  DateFormat.yMMMd().format(
                    widget.snap['datePublished'].toDate(),
                  ),
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
                  Expanded(
                  child: Align(
                alignment: Alignment.bottomRight,
              )),
             IconButton(
                  iconSize: 30.0,
                  //increase the size of the icon
                  icon: Icon(
                    Icons.query_stats_outlined,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return statusWidget();
                      });
                  }),
              SizedBox(width: 15)
            ],
          ),
          //date published of the post
        ]
      )
    );
  }
  statusWidget() {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            //make the border circular
            //make background blur of the container
            color: Colors.black54.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 500,
          width: 300,
          child: SingleChildScrollView(
            //enable single child scroll view

            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                //increase the size of the update status text
                Text(
                  'Complaint Status',
                  style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("CURRENT UPDATE",style: TextStyle(fontFamily: 'Poppins',fontSize: 15,fontWeight: FontWeight.bold),),
                Text(
                  "${widget.snap['statusDes']}",
                  style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("STATUS",style: TextStyle(fontFamily: 'Poppins',fontSize: 15,fontWeight: FontWeight.bold),),
                Text(
                  "${widget.snap['status']}",
                  style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //style the buttons
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
