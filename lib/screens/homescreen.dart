import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/controllers/form_conttroller.dart';
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
  final AuthController authController = Get.find<AuthController>();
  final FormController formController = Get.put(FormController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 248, 1),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 246, 248, 1),
              ),
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Select your location",
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: CSCPicker(
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black54,
                              ),
                            ),
                            disabledDropdownDecoration: BoxDecoration(
                              color: Color.fromRGBO(243, 243, 243, 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            selectedItemStyle: GoogleFonts.lato(),
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
                                Color.fromRGBO(26, 99, 209, 1),
                              ),
                              textStyle: MaterialStateProperty.all(
                                GoogleFonts.lato(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
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
                      "Filters",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            serviceController
                                .selectServiceType(Services.Oxygen);
                          },
                          child: Container(
                            width: 110,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.green[50],
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Oxygen",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.green[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(185, 189, 198, 1),
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
                                .selectServiceType(Services.Plasma);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Plasma",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(185, 189, 198, 1),
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
                                .selectServiceType(Services.Ambulance);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ambulance",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.pink[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(185, 189, 198, 1),
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
                                .selectServiceType(Services.Medicine);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Medicine",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(185, 189, 198, 1),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Food",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.teal[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(185, 189, 198, 1),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Blood",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(185, 189, 198, 1),
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
                    margin: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Search Results",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GetX<ServiceController>(
            builder: (controller) {
              if (serviceController.isLoading.value) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    ServiceModel result = controller.services[index];
                    print(result.serviceType);
                    return Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(54, 121, 218, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              result.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.lato(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white12,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          "City :",
                                          style: GoogleFonts.lato(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          " ${result.city.capitalizeFirst}",
                                          style: GoogleFonts.lato(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
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
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Type :",
                                          style: GoogleFonts.lato(
                                            fontSize: 16,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          child: Text(
                                            "\t${result.serviceType.map((e) => convert(e))}",
                                            maxLines: 1,
                                            style: GoogleFonts.lato(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => Details(
                                      name: result.name,
                                      city: result.city,
                                      phoneNumber: result.phoneNumber,
                                      donationType: result.serviceType
                                          .map((e) => convert(e))
                                          .toList(),
                                      moreDetail: result.moreDetail));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Read more",
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
          Get.to(() => HelpForm());
        },
        backgroundColor: Colors.yellow,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
