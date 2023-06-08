import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voice/reusable_widgets/post_card.dart';
import 'package:voice/student/draft_general.dart';
import 'package:voice/student/student_home.dart';
import 'package:voice/utils/color_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*Future<void> main() async {
//  sortBy();0

 User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    String userId = user.uid;
    // Continue with data retrieval
  } else {
    // User is not authenticated
  }
  if (user != null) {
    String userId = user.uid;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final userDocRef = await firestore.collection('users').doc(userId).get();
    // ignore: unused_local_variable
    dynamic attributeValue = userDocRef.get('branch');
  }
}*/
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    String userId = user.uid;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final userDocRef = await firestore.collection('users').doc(userId).get();
    dynamic attributeValue = userDocRef.get('branch');
    runApp(MyApp(attributeValue: attributeValue));
  } else {
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  final dynamic attributeValue;

  const MyApp({Key? key, this.attributeValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: openComplaints(attributeValue: attributeValue),
    );
  }
}


// ignore: camel_case_types
class openComplaints extends StatefulWidget {
    final dynamic attributeValue;
  const openComplaints({Key? key,  this.attributeValue}) : super(key: key);

  @override
  _openComplaintsState createState() => _openComplaintsState();
}

// ignore: camel_case_types
class _openComplaintsState extends State<openComplaints> {
  get attributeValue => attributeValue;

  // ignore: non_constant_identifier_names

  //String branch = (FirebaseFirestore.instance.collection('users').doc(user?.uid).get()).get('branch');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => studentHomeScreen()))),
        //add an icon to right side of appbar
        actions: [
          IconButton(
            //on pressed function to navigate to the draft page of general complaints
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => draftGeneral()));
            },
            //icon for a pen to write a new complaint
            icon: Icon(Icons.create_outlined),
          ),
        ],
        backgroundColor: Color.fromRGBO(0, 28, 46, 1),
        centerTitle: true,
        title: const Text(
          "OPEN",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontFamily: "Poppins"),
        ),
      ),
      body: Container(
        color: voiceBlue,
        child: Container(
          decoration: BoxDecoration(
              //make border radius circular only at the top
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(colors: [
                hexStringToColor("8a2be2"),
                hexStringToColor("00308F"),
                hexStringToColor("001C2E")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: StreamBuilder(
            //order the complaints by date published
            stream: FirebaseFirestore.instance
                .collection('complaints')
                .where('branch', isEqualTo: attributeValue)
                .orderBy(
                  'upvotes',
                  descending: true,
                )
                .snapshots(),
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
                  snap: snapshot.data!.docs[index].data(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

//Future<void> sortBy() async {
 
    /*userDocRef.get().then((DocumentSnapshot snapshot) {
    if (snapshot.exists) {
      var userData = snapshot.data(); // Get the document data
      // Do something with the user data
    } else {
      // User document does not exist
    }
  }).catchError((error) {
    // Handle any errors
  });
} else {
  // User is not authenticated
}*/
  
//}
//create a home page with reddit feed like design
