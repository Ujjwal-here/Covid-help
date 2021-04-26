import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Repository/service_repo.dart';
import 'package:covid_help/controllers/location_controller.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class ServiceController extends GetxController{

  final LocationController _locationController = LocationController();
  final ServiceRepo _serviceRepo = ServiceRepo();

  RxList<ServiceModel> _services;

  Rx<Services> _serviceType = Services.Oxygen.obs;
  
  LocationData _locationData;

  String _state;
  String _city;

  set state(String s){
    this._state = s;
  }

  set city(String c){
    this._city = c;
  }

  selectServiceType(Services serviceType){
    _serviceType.value = serviceType;
    getServicesByFilter();
  }

  @override
  void onInit() async{
    await _locationController.getLocation();
    _locationData = _locationController.locationData;
   final coordinates = new Coordinates(
          _locationData.latitude, _locationData.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(
          coordinates);
      _city = addresses.first.locality;
      _state = addresses.first.adminArea;
      print(_city);

    super.onInit();
  }

  getServices()async{
    QuerySnapshot qs = await _serviceRepo.getServices(_city.toLowerCase());
    _services = qs.docs.map((e) => ServiceModel(
      serviceType: convertToService(e["type"]), 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"])).toList().obs;

    print(_services);  
  }
  getServicesByFilter()async{
      QuerySnapshot qs = await _serviceRepo.getServicesByFilter(_serviceType.value,_city.toLowerCase());
    _services = qs.docs.map((e) => ServiceModel(
      serviceType: convertToService(e["type"]), 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"])).toList().obs;

    print(_services);  
  }

}