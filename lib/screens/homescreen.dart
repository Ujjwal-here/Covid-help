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
  AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
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
                                    .selectServiceType(Services.Blood);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.red[50],
                                  ),
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
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Search Results",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        color: Color.fromRGBO(37, 46, 73, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GetX<ServiceController>(
            builder: (controller) {
              if(serviceController.isLoading.value){
                return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),);
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    ServiceModel result = controller.services[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(Details(
                            name: result.name,
                            city: result.city,
                            phoneNumber: result.phoneNumber,
                            donationType: convert(result.serviceType),
                            moreDetail: result.moreDetail));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(20, 121, 255, 1),
                              Color.fromRGBO(20, 121, 255, 0.6),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                result.name,
                                style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(20, 121, 255, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "\t City :",
                                      style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      " ${result.city.capitalizeFirst}",
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
                                color: Color.fromRGBO(20, 121, 255, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        "\t${convert(result.serviceType)}",
                                        style: GoogleFonts.nunito(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
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
                      ),
                    );
                  },
                  childCount: controller.services.length,
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(HelpForm());
        },
        backgroundColor: Colors.purple,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
