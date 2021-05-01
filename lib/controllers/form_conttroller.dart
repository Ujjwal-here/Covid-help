import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Repository/service_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormController extends GetxController{
  final String name;
  final String phoneNumber;
  final String detail;
  final String link;
  final String other;

  FormController({Key key, this.name,this.phoneNumber,this.detail,this.link,this.other});
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController detailController = TextEditingController();
  TextEditingController linkController = TextEditingController();
  TextEditingController otherController = TextEditingController();

  onInit(){
    initController();
    super.onInit();
  }

  initController(){
    nameController.text = name;
    phoneNumberController.text = phoneNumber;
    detailController.text = detail;
    linkController.text = link;
    otherController.text = other;
  }

  Rx<bool> loading = false.obs;

  Set<Services> typeOfServices = Set<Services>();

  ServiceRepo serviceRepo = ServiceRepo();

  String _city;
  String _state;

  set city(c){
    _city = c;
  }
  
  set state(s){
    _state = s; 
  }

  bool isOxygenSelected = false;
  bool isAmbulanceSelected = false;
  bool isPlasmaSelected = false;
  bool isHospitalBedsSelected = false;
  bool isMedicineSelected = false;
  bool isBloodSelected = false;
  bool isFoodSelected = false;


  addServiceType(Services service){
    typeOfServices.add(service);
  }

  removeService(Services services){
    typeOfServices.remove(services);
  }

  postForm()async{
    if(nameController.text == "" || phoneNumberController.text == "" || typeOfServices.isEmpty || _city == null || _state == null){
      Get.snackbar("Fill Required Fields!!", "Some Fields are required fill those to submit!");
      return;
    }
    loading.toggle();
    var postDateTime = DateTime.now();
      Map<String,dynamic> form = {
        "name":nameController.text.trim(),
        "city":_city,
        "state":_state,
        "phoneNumber":phoneNumberController.text.trim(),
        "type":typeOfServices.map((e) => convert(e)).toList(),
        "upvotes":0,
        "moreDetail":detailController.text.trim(),
        "timeOfUpload":postDateTime
      };
    DocumentReference docRef = await serviceRepo.postServices(form);
    await serviceRepo.postServiceInUser(form,docRef.id);
    loading.toggle();
    Get.back();
  }

  editForm(String uid)async{
    if(nameController.text == null || phoneNumberController.text == null || typeOfServices.isEmpty || _city == null || _state == null){
      Get.snackbar("Fill Required Fields!!", "Some Fields are required fill those to submit!");
      return;
    }
    loading.toggle();
    var postDateTime = DateTime.now();
    Map<String,dynamic> form = {
        "name":nameController.text.trim(),
        "city":_city,
        "state":_state,
        "phoneNumber":phoneNumberController.text.trim(),
        "type":typeOfServices.map((e) => convert(e)).toList(),
        "upvotes":0,
        "moreDetail":detailController.text.trim(),
        "timeOfUpload":postDateTime
      };
    try {
     await serviceRepo.editPostService(uid, form); 
    } catch (e) {
      loading.toggle();
      return;
    }
    loading.toggle();
    Get.back();

  }
}