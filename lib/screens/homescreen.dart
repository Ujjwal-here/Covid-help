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
            child: Text(
              "Covid-19 Resources",
              style: GoogleFonts.nunito(
                fontSize: 22,
                color: Color.fromRGBO(37, 46, 73, 1),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            child: Text(
              "Help people out in this pandemic by donating",
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: Color.fromRGBO(185, 189, 198, 1),
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
                    print(value);
                  },
                  onStateChanged: (value) {
                    print(value);
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Search"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(12),
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
                Container(
                  width: 110,
                  margin:
                      EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.green[50],
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
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontSize: 13,
                                color: Color.fromRGBO(185, 189, 198, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  margin:
                      EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.red[50],
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
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontSize: 13,
                                color: Color.fromRGBO(185, 189, 198, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  margin:
                      EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.pink[50],
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
                                fontSize: 16,
                                color: Colors.pink,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontSize: 13,
                                color: Color.fromRGBO(185, 189, 198, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  margin:
                      EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue[50],
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
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontSize: 13,
                                color: Color.fromRGBO(185, 189, 198, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  margin:
                      EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.teal[50],
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
                                fontSize: 16,
                                color: Colors.teal,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontSize: 13,
                                color: Color.fromRGBO(185, 189, 198, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 110,
                  margin:
                      EdgeInsets.only(right: 10, top: 10, left: 5, bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.red[50],
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
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontSize: 13,
                                color: Color.fromRGBO(185, 189, 198, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
            height: 200,
            margin: const EdgeInsets.only(top: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(10, 88, 189, 1),
                        Color.fromRGBO(66, 143, 244, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Newlife Hospital",
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(66, 143, 244, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "\tCity :",
                                style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "\tRenukoot",
                                style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(66, 143, 244, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "\tType :",
                                style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "\tHospital beds-with Oxygen",
                                style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Text(
                          "More details...",
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.white,
                          ),
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
