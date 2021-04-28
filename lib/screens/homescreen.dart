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
      backgroundColor: Color.fromRGBO(245, 246, 250, 1),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "Covid-19 Resources",
              style: GoogleFonts.nunito(
                fontSize: 25,
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
                  onTap: () {
                    serviceController.selectServiceType(Services.Oxygen);
                  },
                  child: Container(
                    width: 110,
                    margin: EdgeInsets.only(
                        right: 10, top: 10, left: 5, bottom: 10),
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
                ),
                GestureDetector(
                  onTap: () {
                    serviceController.selectServiceType(Services.Blood);
                  },
                  child: Container(
                    width: 110,
                    margin: EdgeInsets.only(
                        right: 10, top: 10, left: 5, bottom: 10),
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
                ),
                GestureDetector(
                  onTap: () {
                    serviceController
                        .selectServiceType(Services.EmergencyService);
                  },
                  child: Container(
                    width: 110,
                    margin: EdgeInsets.only(
                        right: 10, top: 10, left: 5, bottom: 10),
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
                ),
                GestureDetector(
                  onTap: () {
                    serviceController.selectServiceType(Services.Medicine);
                  },
                  child: Container(
                    width: 110,
                    margin: EdgeInsets.only(
                        right: 10, top: 10, left: 5, bottom: 10),
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
                ),
                GestureDetector(
                  onTap: () {
                    serviceController.selectServiceType(Services.Food);
                  },
                  child: Container(
                    width: 110,
                    margin: EdgeInsets.only(
                        right: 10, top: 10, left: 5, bottom: 10),
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
                ),
                GestureDetector(
                  onTap: () {
                    serviceController.selectServiceType(Services.Ambulance);
                  },
                  child: Container(
                    width: 110,
                    margin: EdgeInsets.only(
                        right: 10, top: 10, left: 5, bottom: 10),
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
            child: GetX<ServiceController>(
              builder: (controller) {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: controller.services.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    ServiceModel result = controller.services[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(Details());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        constraints: BoxConstraints(maxWidth: 190),
                        margin: EdgeInsets.only(right: 10),
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
                                borderRadius: BorderRadius.circular(10),
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
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
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
                                      "\t${convert(result.serviceType)}",
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
                      ),
                    );
                  },
                );
              },
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
