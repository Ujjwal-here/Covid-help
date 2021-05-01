import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Repository/service_repo.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class ServiceController extends GetxController{

  final ServiceRepo _serviceRepo = ServiceRepo();

  RxList<ServiceModel> _services = List<ServiceModel>.empty().obs;

  Rx<Services> _serviceType = Services.Oxygen.obs;
  
  LocationData _locationData;

  Rx<bool> isLoading = false.obs;

  Rx<bool> noResult = false.obs;

  Rx<bool> isOxygenSelected = false.obs;
  Rx<bool> isBloodSelected = false.obs;
  Rx<bool> isPlasmaSelected = false.obs;
  Rx<bool> isAmbulanceSelected = false.obs;
  Rx<bool> isMedicineSelected = false.obs;
  Rx<bool> isFoodSelected = false.obs;
  Rx<bool> isBedSelected = false.obs;

  String _state;
  String _city;

  set state(String s){
    this._state = s;
  }

  set city(String c){
    this._city = c;
  }

  List<ServiceModel> get services => _services.value;

  selectServiceType(Services serviceType){
    _serviceType.value = serviceType;

    switch (serviceType) {
      case Services.Ambulance:
        isAmbulanceSelected.value = true;
        isBloodSelected.value = false;
        isPlasmaSelected.value = false;
        isFoodSelected.value = false;
        isMedicineSelected.value = false;
        isOxygenSelected.value = false;
        break;
      case Services.Blood:
      isBloodSelected.value = true;
      isAmbulanceSelected.value = false;
      isPlasmaSelected.value = false;
      isFoodSelected.value = false;
      isMedicineSelected.value = false;
      isOxygenSelected.value = false;
      break;
      case Services.Plasma:
      isPlasmaSelected.value = true;
      isFoodSelected.value = false;
      isMedicineSelected.value = false;
      isOxygenSelected.value = false;
      isBloodSelected.value = false;
      isAmbulanceSelected.value = false;
      break;
      case Services.Food:
      isFoodSelected.value = true;
      isMedicineSelected.value = false;
      isOxygenSelected.value = false;
      isBloodSelected.value = false;
      isAmbulanceSelected.value = false;
      isPlasmaSelected.value = false;
      break;
      case Services.Medicine:
      isMedicineSelected.value = true;
      isOxygenSelected.value = false;
      isBloodSelected.value = false;
      isAmbulanceSelected.value = false;
      isPlasmaSelected.value = false;
      isFoodSelected.value = false;
      break;
      case Services.Oxygen:
      isOxygenSelected.value = true;
      isBloodSelected.value = false;
      isAmbulanceSelected.value = false;
      isPlasmaSelected.value = false;
      isFoodSelected.value = false;
      isMedicineSelected.value = false;
      break;
      default:
    }

    getServicesByFilter();
  }

  getSnackBar(){
    Get.snackbar("Alert!", "Please enter a State and a City",colorText: Colors.red,backgroundColor: Colors.white);
  }

  getServices()async{
    if(_city ==null || _state == null){
      getSnackBar();
      return;
    }

    isLoading.value = true;

    QuerySnapshot qs = await _serviceRepo.getServices(_city);
    _services.value = qs.docs.map((e) {
      List<Services> serviceType = List.from(e["type"].map((e)=>convertToService(e)));
      print(serviceType);
      print("garegaergerg");
      return ServiceModel(
      serviceType:serviceType , 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"],
      moreDetail: e["moreDetail"],
      postDateTime: (e["timeOfUpload"]as Timestamp).toDate(),
      link: e["link"]
      );}).toList().obs;

    print(_services);
    if(_services.isEmpty){
      print("empty");
      noResult.value = true;
    }
    else{
      noResult.value = false;
    }
    isLoading.value = false;

    }
    
  getServicesByFilter()async{
    if(_city ==null || _state == null){
      getSnackBar();
      return;
    }
    isLoading.value = true;
      QuerySnapshot qs = await _serviceRepo.getServicesByFilter(_serviceType.value,_city);
    _services.value = qs.docs.map((e) {
      List<Services> serviceType = List.from(e["type"].map((e)=>convertToService(e)));
      return ServiceModel(
      serviceType: serviceType, 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"],
      moreDetail: e["moreDetail"],
      postDateTime: (e["timeOfUpload"]as Timestamp).toDate(),
      link: e["link"]
      );}).toList().obs;

    print(_services);
    if(_services.isEmpty){
      print("empty");
      noResult.value = true;
    }
    else{
      noResult.value = false;
    }
    isLoading.value = false;
  }


}