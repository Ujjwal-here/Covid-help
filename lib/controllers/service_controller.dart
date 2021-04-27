import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Repository/service_repo.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class ServiceController extends GetxController{

  final ServiceRepo _serviceRepo = ServiceRepo();

  RxList<ServiceModel> _services = List<ServiceModel>.empty().obs;

  Rx<Services> _serviceType = Services.Oxygen.obs;
  
  LocationData _locationData;

  Rx<bool> isLoading = false.obs;

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
    getServicesByFilter();
  }

  getServices()async{
    if(_city ==null || _state == null){
      Get.snackbar("Error", "You have to search a state and city");
      return;
    }

    isLoading.value = true;

    QuerySnapshot qs = await _serviceRepo.getServices(_city.toLowerCase());
    _services.value = qs.docs.map((e) => ServiceModel(
      serviceType: convertToService(e["type"]), 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"])).toList().obs;

    print(_services);
    isLoading.value = false;
  }
  getServicesByFilter()async{
    if(_city ==null || _state == null){
      Get.snackbar("Error", "You have to search a state and city");
      return;
    }
    isLoading.value = true;
      QuerySnapshot qs = await _serviceRepo.getServicesByFilter(_serviceType.value,_city.toLowerCase());
    _services.value = qs.docs.map((e) => ServiceModel(
      serviceType: convertToService(e["type"]), 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"])).toList().obs;

    print(_services);  
    isLoading.value = false;
  }

}