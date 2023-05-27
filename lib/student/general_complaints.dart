import 'package:flutter/material.dart';

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
      backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "GENERAL",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
//create a home page with reddit feed like design
