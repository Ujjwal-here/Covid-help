import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserRepo {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<DocumentReference> registerUser(Map<String, dynamic> user)async{
    try {
      return await _firestore.collection("users").add(user);
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!!");
    }
  }

  Future<DocumentSnapshot> getUser(String userUid)async{
    try {
      return await _firestore.collection("users").doc(userUid).get();
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!!");
    }
  }
}