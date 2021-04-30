import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Repository/service_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController detailController = TextEditingController();
  TextEditingController linkController = TextEditingController();
  TextEditingController otherController = TextEditingController();

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
  bool isOtherSelected = false;
  bool isFoodSelected = false;


  addServiceType(Services service){
    typeOfServices.add(service);
  }

  removeService(Services services){
    typeOfServices.remove(services);
  }

  postForm()async{
    if(nameController.text == null || phoneNumberController.text == null || typeOfServices.isEmpty || _city == null || _state == null){
      Get.snackbar("Fill Required Fields!!", "Some Fields are required fill those to submit!");
      return;
    }
      Map<String,dynamic> form = {
        "name":nameController.text.trim(),
        "city":_city,
        "state":_state,
        "phoneNumber":phoneNumberController.text.trim(),
        "type":typeOfServices.map((e) => convert(e)).toList(),
        "upvotes":0,
        "moreDetail":detailController.text.trim()
      };
    await serviceRepo.postServices(form);
    Get.back();
  }



}