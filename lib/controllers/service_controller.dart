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

  Rx<bool> noResult = false.obs;


  


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
      Get.snackbar("Error", "You have to search a state and city");
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
      postDateTime: (e["timeOfUpload"]as Timestamp).toDate()
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