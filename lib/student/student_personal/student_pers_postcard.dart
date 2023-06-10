import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:voice/methods/firestore_methods.dart';
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

                  IconButton(
                        onPressed: () {
                          showDialog(
                            useRootNavigator: false,
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: ListView(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    shrinkWrap: true,
                                    children: [
                                       if(widget.snap['userId'] == user!.uid)'Delete',
                                    ]
                                        .map(
                                          (e) => InkWell(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                        horizontal: 16),
                                                child: Text(e),
                                              ),

                                              onTap: () {
                                                deletePost(
                                                  widget.snap['postId']
                                                      .toString(),
                                                );
                                                // remove the dialog box
                                                Navigator.of(context).pop();
                                              }
                                            ),
                                        )
                                        .toList()),
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.more_vert),
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
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(46, 255, 255, 255)
                                ),
                              onPressed: () {},
                              child: Text('Status'),
                              ),
                ),
              ),
              SizedBox(width: 15)
            ],
          ),
          //date published of the post
        ]
      )
    );
  }
}