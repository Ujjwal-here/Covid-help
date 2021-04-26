import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/controllers/service_controller.dart';
import 'package:covid_help/screens/form.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final ServiceController serviceController = Get.put(ServiceController());

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 246, 250, 1),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: RichText(
              text: TextSpan(
                text: 'Hello\n',
                style: GoogleFonts.nunito(
                  fontSize: 22,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Wear mask,save lives',
                    style: TextStyle(
                      color: Color.fromRGBO(20, 121, 255, 1),
                      letterSpacing: 1,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(20, 121, 255, 1),
                  Color.fromRGBO(20, 121, 255, 0.6),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CSCPicker(
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  disabledDropdownDecoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  selectedItemStyle: GoogleFonts.nunito(),
                  dropdownHeadingStyle: GoogleFonts.nunito(color: Colors.white),
                  dropdownItemStyle: GoogleFonts.nunito(),
                  flagState: CountryFlag.DISABLE,
                  onCountryChanged: (value) {
                    print(value);
                  },
                  onCityChanged: (value) {
                    serviceController.city = value?.toLowerCase();
                  },
                  onStateChanged: (value) {
                    serviceController.state = value?.toLowerCase();
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      serviceController.getServices();
                    },
                    child: Text("Search"),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(8),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(20, 121, 255, 1),
                      ),
                      textStyle: MaterialStateProperty.all(
                        GoogleFonts.nunito(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 5),
            child: Text(
              "Filters",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Color.fromRGBO(37, 46, 73, 1),
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){
                    serviceController.selectServiceType(Services.Oxygen);
                  },
                  child: Container(
                    width: 110,
                    margin:
                        EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green[100],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image(
                            width: 15,
                            image: AssetImage(
                              "assets/oxygen-cylinder.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Oxygen",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "Donation",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Color.fromRGBO(185, 189, 198, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    serviceController.selectServiceType(Services.Blood);
                  },
                  child: Container(
                    width: 110,
                    margin:
                        EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.red[100],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image(
                            width: 40,
                            image: AssetImage(
                              "assets/blood-test.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Plasma",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "Donation",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Color.fromRGBO(185, 189, 198, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    serviceController.selectServiceType(Services.EmergencyService);
                  },
                  child: Container(
                    width: 110,
                    margin:
                        EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.pink[100],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image(
                            width: 40,
                            image: AssetImage(
                              "assets/emergency.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambulance",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.pink,
                                ),
                              ),
                              Text(
                                "Donation",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Color.fromRGBO(185, 189, 198, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    serviceController.selectServiceType(Services.Medicine);
                  },
                  child: Container(
                    width: 110,
                    margin:
                        EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blue[100],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image(
                            width: 40,
                            image: AssetImage(
                              "assets/pills-tablets.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Medicine",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "Donation",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Color.fromRGBO(185, 189, 198, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    serviceController.selectServiceType(Services.Food);
                  },
                  child: Container(
                    width: 110,
                    margin:
                        EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.teal[100],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image(
                            width: 40,
                            image: AssetImage(
                              "assets/vegetarian-food.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Food",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.teal,
                                ),
                              ),
                              Text(
                                "Donation",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Color.fromRGBO(185, 189, 198, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    serviceController.selectServiceType(Services.Ambulance);
                  },
                  child: Container(
                    width: 110,
                    margin:
                        EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.red[100],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Image(
                            width: 40,
                            image: AssetImage(
                              "assets/donate-donation.png",
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Others",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "Donation",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Color.fromRGBO(185, 189, 198, 1),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 5),
            child: Text(
              "Search Results",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Color.fromRGBO(37, 46, 73, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Newlife hospital.",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "City :",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    " Renukoot",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Type :",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    " Hospital beds",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Read more..",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Color.fromRGBO(20, 121, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(HelpForm());
        },
        backgroundColor: Color.fromRGBO(20, 121, 255, 1),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
