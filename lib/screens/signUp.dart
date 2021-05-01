import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/widgets/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetX<AuthController>(
        builder: (controller) {
          return Stack(children: [
            Opacity(
              opacity: controller.loading.value ? 1 : 0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            Opacity(
              opacity: controller.loading.value ? 0.5 : 1,
              child: ListView(
                padding: const EdgeInsets.all(30),
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 50),
                    child: Image(
                      height: SizeConfig.blockSizeVertical * 30,
                      image: AssetImage("assets/mask.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        fontSize: SizeConfig.safeBlockHorizontal * 7,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "Enter your phone number to start working",
                      style: GoogleFonts.lato(
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: authController.phoneNumberController,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.lato(
                        fontSize: 20,
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
                        prefixIcon: Icon(
                          Icons.call_rounded,
                          color: Color.fromRGBO(26, 99, 209, 1),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
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
                            Color.fromRGBO(26, 99, 209, 1),
                          ),
                          textStyle: MaterialStateProperty.all(
                            GoogleFonts.lato(
                              decoration: TextDecoration.none,
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ]);
        },
      ),
    );
  }
}
