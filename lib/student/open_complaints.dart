import 'package:flutter/material.dart';

class openComplaints extends StatefulWidget {
  const openComplaints({Key? key}) : super(key: key);

  @override
  _openComplaintsState createState() => _openComplaintsState();
}

class _openComplaintsState extends State<openComplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "OPEN",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
//create a home page with reddit feed like design
