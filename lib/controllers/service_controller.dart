import 'package:covid_help/controllers/location_controller.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class ServiceController extends GetxController {
  final LocationController _locationController = LocationController();

  Rx<List<ServiceModel>> services;
  
  LocationData _locationData;

  @override
  void onInit() async{
    await _locationController.getLocation();
    _locationData = _locationController.locationData;
   final coordinates = new Coordinates(
          _locationData.latitude, _locationData.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(
          coordinates);
      print(addresses.first.postalCode);


    super.onInit();
  }
}