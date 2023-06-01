//1.update status

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void updateStatus(String status, BuildContext context) {
  //get the complaint id from the url
  String complaintId = ModalRoute.of(context)!.settings.arguments.toString();
  //update the status of the complaint in firestore
  FirebaseFirestore.instance.collection('complaints').doc(complaintId).update({
    'status': FieldValue.arrayUnion([status])
  });
  //show a snackbar to the user
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Status updated successfully')));
}