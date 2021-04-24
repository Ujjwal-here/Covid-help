import 'package:covid_help/controllers/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            authController.signOut();
          },
          child: Icon(Icons.logout)),
      ),
      body: Center(child: Text("Hey Covid!!")),
    );
  }
}