import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/widgets/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifCode extends StatelessWidget {
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
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
                      margin: const EdgeInsets.only(top: 50),
                      child: Image(
                        height: SizeConfig.blockSizeVertical * 30,
                        image: AssetImage("assets/protection.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Verification",
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
                        "Enter the 6-digit code sent to your phone number",
                        style: GoogleFonts.lato(
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeConfig.blockSizeVertical * 5.5,
                          margin: EdgeInsets.only(top: 30),
                          child: TextField(
                            maxLength: 1,
                            controller: authController.otpController1,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
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
                          width: SizeConfig.blockSizeVertical * 5.5,
                          margin: const EdgeInsets.only(top: 30),
                          child: TextField(
                            maxLength: 1,
                            controller: authController.otpController2,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
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
                          width: SizeConfig.blockSizeVertical * 5.5,
                          margin: const EdgeInsets.only(top: 30),
                          child: TextField(
                            maxLength: 1,
                            controller: authController.otpController3,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            focusNode: focusNode,
                            decoration: InputDecoration(
                              counterText: "",
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
                          width: SizeConfig.blockSizeVertical * 5.5,
                          margin: EdgeInsets.only(top: 30),
                          child: TextField(
                            maxLength: 1,
                            controller: authController.otpController4,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
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
                          width: SizeConfig.blockSizeVertical * 5.5,
                          margin: EdgeInsets.only(top: 30),
                          child: TextField(
                            maxLength: 1,
                            controller: authController.otpController5,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
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
                          width: SizeConfig.blockSizeVertical * 5.5,
                          margin: EdgeInsets.only(top: 30),
                          child: TextField(
                            maxLength: 1,
                            controller: authController.otpController6,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 6,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                            decoration: InputDecoration(
                              counterText: "",
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
                          focusNode.unfocus();
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
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
