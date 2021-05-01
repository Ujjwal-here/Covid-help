import 'package:covid_help/controllers/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetX<AuthController>(
        builder: (controller){
          return Stack(
          children: [
            Opacity(
              opacity: controller.loading.value?0.5:1,
              child: ListView(
              padding: const EdgeInsets.all(30),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 50),
                  child: Image(
                    height: 250,
                    image: AssetImage("assets/protection.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Verification",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "Enter the 6-digit code sent to your phone number",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45,
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        controller: authController.otpController1,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(185, 189, 198, 0.5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        controller: authController.otpController2,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(185, 189, 198, 0.5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        controller: authController.otpController3,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(185, 189, 198, 0.5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        controller: authController.otpController4,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(185, 189, 198, 0.5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        controller: authController.otpController5,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(185, 189, 198, 0.5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        controller: authController.otpController6,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.lato(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(185, 189, 198, 0.5),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      authController.manualPart();
                    },
                    child: Text("Verify"),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(15),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(26, 99, 209, 1),
                      ),
                      textStyle: MaterialStateProperty.all(
                        GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
                      ),
            ),
            Opacity(opacity: controller.loading.value?1:0,
            child: Center(child: CircularProgressIndicator(),),
            ),
          ]);
        },
        
      ),
    );
  }
}
