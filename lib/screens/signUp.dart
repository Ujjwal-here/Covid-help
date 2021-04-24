import 'package:covid_help/controllers/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: 350,
            image: AssetImage("assets/login.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, top: 10),
            child: Text(
              "Sign Up",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Color.fromRGBO(37, 46, 73, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: Text(
              "Enter your phone number to get start working",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Color.fromRGBO(185, 189, 198, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 50, right: 30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(185, 189, 198, 0.5),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: authController.phoneNumberController,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(20, 121, 255, 1),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.call_rounded,
                  color: Color.fromRGBO(20, 121, 255, 1),
                  size: 18,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 50, right: 30),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                authController.signIn();
              },
              child: Text("Next"),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(20, 121, 255, 1),
                  ),
                  textStyle: MaterialStateProperty.all(
                    GoogleFonts.nunito(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
