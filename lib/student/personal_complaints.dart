import 'package:flutter/material.dart';

class personalComplaints extends StatefulWidget {
  const personalComplaints({Key? key}) : super(key: key);

  @override
  _personalComplaintsState createState() => _personalComplaintsState();
}

class _personalComplaintsState extends State<personalComplaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "PERSONAL",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
//create a home page with reddit feed like design
