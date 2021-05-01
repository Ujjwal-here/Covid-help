import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/AuthController.dart';
import 'package:get/get.dart';

class ServiceRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthController _authController = Get.find<AuthController>();

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
          .where("type", arrayContains: convert(service))
          .get();
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }

  Future<DocumentReference> postServices(Map<String, dynamic> service) async {
    try {
      return await _firestore.collection("services").add(service);
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }

  postServiceInUser(Map<String, dynamic> service,String uid)async{
    try {
      return await _firestore
                    .collection("users")
                    .doc(_authController.user.uid)
                    .collection("services")
                    .doc(uid)
                    .set(service);
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }
  editPostService(String uid,Map<String, dynamic> serviceUpdate)async{
    try {
      await _firestore
            .collection("services")
            .doc(uid)
            .update(serviceUpdate);


      await _firestore
            .collection("users")
            .doc(_authController.user.uid)
            .collection("services")
            .doc(uid)
            .update(serviceUpdate);
      return;      
    } catch (e) {
      Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }
  
  Future<QuerySnapshot> getUserServices()async{
    try {
      print("The User uid is::${_authController.user.uid}");
      return await _firestore
                    .collection("users")
                    .doc(_authController.user.uid)
                    .collection("services")
                    .orderBy("timeOfUpload",descending: true)
                    .get();
    } catch (e) {
      print(e);
       Get.snackbar("Something Went Wrong", "Please Try Again!");
    }
  }
}
