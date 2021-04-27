import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:get/get.dart';

class ServiceRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getServices(String location) async {
    try {
      return await _firestore
          .collection("services")
          .where("city", isEqualTo: location)
          .get();
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }
  Future<QuerySnapshot> getServicesByFilter(Services service,String location) async {
    try {
      return await _firestore
          .collection("services")
          .where("city", isEqualTo: location)
          .where("type", isEqualTo: convert(service))
          .get();
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }

  postServices(Map<String, dynamic> service) async {
    try {
      return await _firestore.collection("services").add(service);
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }
}
