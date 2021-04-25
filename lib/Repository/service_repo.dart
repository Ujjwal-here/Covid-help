import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class ServiceRepo{

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getServices(String location)async{
    try {
        return await _firestore.collection("services").where("address",isEqualTo: location).get();
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }

  postServices(Map<String, dynamic> service)async{
    try {
      return await _firestore.collection("services").add(service);
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }

}