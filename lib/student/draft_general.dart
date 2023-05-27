import 'package:flutter/material.dart';

class draftGeneral extends StatefulWidget {
  const draftGeneral({Key? key}) : super(key: key);

  @override
  _draftGeneralState createState() => _draftGeneralState();
}

class _draftGeneralState extends State<draftGeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        title: const Text(
          "New Complaint",
        ),
        actions: [
          TextButton(onPressed: (){},
           child: const Text("Post",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold, fontSize: 16),))
        ],
      ),
      body:Container(
        //change color of the container
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
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
}