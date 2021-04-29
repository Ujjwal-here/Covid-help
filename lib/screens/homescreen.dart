import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/controllers/service_controller.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:covid_help/screens/details.dart';
import 'package:covid_help/screens/form.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final ServiceController serviceController = Get.put(ServiceController());

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Select your location",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        color: Color.fromRGBO(37, 46, 73, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
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
                          dropdownHeadingStyle:
                              GoogleFonts.nunito(color: Colors.white),
                          dropdownItemStyle: GoogleFonts.nunito(),
                          flagState: CountryFlag.DISABLE,
                          onCountryChanged: (value) {
                            print(value);
                          },
                          onCityChanged: (value) {
                            serviceController.city = value;
                          },
                          onStateChanged: (value) {
                            serviceController.state = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        serviceController.getServices();
                      },
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
                    margin: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Filters",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        color: Color.fromRGBO(37, 46, 73, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                serviceController
                                    .selectServiceType(Services.Oxygen);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.green[50],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.green[100],
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image(
                                        width: 20,
                                        image: AssetImage(
                                          "assets/blood-test.png",
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "\tOxygen",
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                serviceController
                                    .selectServiceType(Services.Plasma);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.red[50],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red[100],
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image(
                                        width: 22,
                                        image: AssetImage(
                                          "assets/blood-test.png",
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "\tPlasma",
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                serviceController
                                    .selectServiceType(Services.Food);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.teal[50],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.teal[50],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.teal[100],
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image(
                                        width: 20,
                                        image: AssetImage(
                                          "assets/vegetarian-food.png",
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "\t Food",
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  serviceController
                                      .selectServiceType(Services.Medicine);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.blue[50],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue[100],
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image(
                                          width: 20,
                                          image: AssetImage(
                                            "assets/pills-tablets.png",
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\tMedicine",
                                        style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  serviceController
                                      .selectServiceType(Services.Ambulance);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[50],
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.pink[50],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.pink[100],
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image(
                                          width: 20,
                                          image: AssetImage(
                                            "assets/emergency.png",
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\tAmbulance",
                                        style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.pink,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  serviceController
                                      .selectServiceType(Services.Others);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.orange[50],
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.orange[50],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.orange[100],
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image(
                                          width: 18,
                                          image: AssetImage(
                                            "assets/donate-donation.png",
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\tOthers",
                                        style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
