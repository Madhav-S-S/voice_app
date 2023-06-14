import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class emailVerify extends StatefulWidget {
  const emailVerify({Key? key}) : super(key: key);

  @override
  State<emailVerify> createState() => _emailVerifyState();
}

class _emailVerifyState extends State<emailVerify> {
  bool isEmailVerified = false;
  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    if(!isEmailVerified){
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
    }
  }
    Future sendEmailVerification() async {
    try {
      await FirebaseAuth.instance.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      print(e.message);
      // TODO
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}