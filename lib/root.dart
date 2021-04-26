import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/screens/homescreen.dart';
import 'package:covid_help/screens/signUp.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Root extends GetWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Obx(() {
      if (authController.user != null) {
        return HomeScreen();
      }
      return SignUp();
    });
  }
}
