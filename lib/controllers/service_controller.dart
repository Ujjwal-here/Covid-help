import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Enums/type_enum.dart';
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
  
  LocationData _locationData;

  String state;
  String city;

  Services filter;

  @override
  void onInit() async{
    await _locationController.getLocation();
    _locationData = _locationController.locationData;
   final coordinates = new Coordinates(
          _locationData.latitude, _locationData.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(
          coordinates);
      city = addresses.first.locality;
      state = addresses.first.adminArea;
      print(city);

    super.onInit();
  }

  getServices()async{
    QuerySnapshot qs = await _serviceRepo.getServices(city.toLowerCase());
    _services = qs.docs.map((e) => ServiceModel(
      type: convertToTypeOf(e["type"]), 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"])).toList().obs;
  }

}