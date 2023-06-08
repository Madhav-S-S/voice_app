import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> UpvotePost(String postId, String uid, List upvotes,String type) async {
    String res = "Some error occurred";
    try {
      if (upvotes.contains(uid)) {
        // if the likes list contains the user uid, we need to remove it
        _firestore.collection(type).doc(postId).update({
          'upvotes': FieldValue.arrayRemove([uid])
        });
      } else {
        // else we need to add uid to the likes array
        _firestore.collection(type).doc(postId).update({
          'upvotes': FieldValue.arrayUnion([uid])
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
   Future<String> DownvotePost(String postId, String uid, List downvotes,String type) async {
    String res = "Some error occurred";
    try {
      if (downvotes.contains(uid)) {
        // if the likes list contains the user uid, we need to remove it
        _firestore.collection(type).doc(postId).update({
          'downvotes': FieldValue.arrayRemove([uid])
        });
      } else {
        // else we need to add uid to the likes array
        _firestore.collection(type).doc(postId).update({
          'downvotes': FieldValue.arrayUnion([uid])
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
  Future<String> deletePost(String postId) async {
    String res = "Some error occurred";
    try {
      await _firestore.collection('complaints').doc(postId).delete();
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
