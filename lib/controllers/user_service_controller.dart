import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Repository/service_repo.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UserServicesController extends GetxController {

  final ServiceRepo _serviceRepo = ServiceRepo();
  RxList<ServiceModel> _services = List<ServiceModel>.empty().obs;
  List<ServiceModel> get services => _services.value;

  Rx<bool> loading = false.obs;
  Rx<String> noServices = "".obs;

    @override
    onInit(){
      getUserServices();
      super.onInit();
    }

  getUserServices()async{
    loading.toggle();
    QuerySnapshot qs = await _serviceRepo.getUserServices();
    _services.value = qs.docs.map((e) {
      List<Services> serviceType = List.from(e["type"].map((e)=>convertToService(e)));
      return ServiceModel(
      serviceUid: e.id,
      serviceType: serviceType, 
      city: e["city"], 
      state: e["state"], 
      name: e["name"], 
      phoneNumber: e["phoneNumber"], 
      upvotes: e["upvotes"],
      moreDetail: e["moreDetail"],
      postDateTime: e["timeOfUpload"]
      );}).toList().obs;
    loading.toggle();
    print(_services);
    if(_services == []){
      noServices.value = "After You Add Some Services It Will Show Here";
    } 
  }

}