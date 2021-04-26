import 'package:get/get.dart';
import 'package:location/location.dart';

class LocationController extends GetxController{

  final Location _location = Location();
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  LocationData get locationData => _locationData;

  getLocation()async{
    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
     _serviceEnabled = await _location.requestService();
    if (!_serviceEnabled) {
      return null;
    }
  }

  _permissionGranted = await _location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await _location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return null;
    }
  }

  _locationData = await _location.getLocation();
   
  }

}