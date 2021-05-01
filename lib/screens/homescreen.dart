import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/AuthController.dart';
import 'package:covid_help/controllers/service_controller.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:covid_help/screens/details.dart';
import 'package:covid_help/screens/form.dart';
import 'package:covid_help/screens/posts.dart';
import 'package:covid_help/widgets/sizeConfig.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final ServiceController serviceController = Get.put(ServiceController());
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              authController.signOut();
            },
            child: Icon(
              Icons.logout,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: GestureDetector(
              onTap: () {
                Get.to(() => Posts());
              },
              child: Icon(
                Icons.post_add,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(244, 246, 248, 1),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(244, 246, 248, 1),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Select your location",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 4.2,
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
                                color: Color.fromRGBO(26, 99, 209, 1),
                              ),
                            ),
                            disabledDropdownDecoration: BoxDecoration(
                              color: Color.fromRGBO(243, 243, 243, 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            selectedItemStyle: GoogleFonts.lato(),
                            dropdownHeadingStyle:
                                GoogleFonts.lato(color: Colors.white),
                            dropdownItemStyle: GoogleFonts.lato(),
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
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 3.5,
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
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    child: Text(
                      "Filters",
                      style: GoogleFonts.lato(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.2,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: SizeConfig.blockSizeVertical * 19,
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
                            width: SizeConfig.blockSizeVertical * 14,
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
                                    height: SizeConfig.blockSizeVertical * 5,
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
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.8,
                                          color: Colors.green[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3,
                                          color: Colors.green,
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
                            width: SizeConfig.blockSizeVertical * 14,
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
                                    height: SizeConfig.blockSizeVertical * 3.6,
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
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.8,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3,
                                          color: Colors.red,
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
                            width: SizeConfig.blockSizeVertical * 14,
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
                                    height: SizeConfig.blockSizeVertical * 3.5,
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
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.8,
                                          color: Colors.pink[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    3,
                                            color: Colors.pink),
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
                            width: SizeConfig.blockSizeVertical * 14,
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
                                    height: SizeConfig.blockSizeVertical * 3,
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
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.8,
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3,
                                          color: Colors.blue,
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
                            width: SizeConfig.blockSizeVertical * 14,
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
                                Image(
                                  height: SizeConfig.blockSizeVertical * 3.5,
                                  image: AssetImage(
                                    "assets/vegetarian-food.png",
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
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.8,
                                          color: Colors.teal[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3,
                                          color: Colors.teal,
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
                            width: SizeConfig.blockSizeVertical * 14,
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
                                Image(
                                  height: SizeConfig.blockSizeVertical * 4,
                                  image: AssetImage(
                                    "assets/donate-donation.png",
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
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3.8,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                      Text(
                                        "Donation",
                                        style: GoogleFonts.lato(
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  3,
                                          color: Colors.red,
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
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    child: Text(
                      "Search Results",
                      style: GoogleFonts.lato(
                        fontSize: SizeConfig.safeBlockHorizontal * 4.2,
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
                                fontSize: SizeConfig.safeBlockHorizontal * 5.5,
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
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    3.7,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "\t\t${result.city.capitalizeFirst}",
                                          style: GoogleFonts.lato(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    3.8,
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
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    3.7,
                                            color: Colors.white,
                                            //fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          child: Text(
                                            "\t\t${result.serviceType.map((e) => convert(e))}",
                                            maxLines: 1,
                                            style: GoogleFonts.lato(
                                              fontSize: SizeConfig
                                                      .safeBlockHorizontal *
                                                  3.8,
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
                                        moreDetail: result.moreDetail,
                                        postDateTime: result.postDateTime,
                                      ));
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
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 3.4,
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
          Get.to(() => HelpForm(
                editMode: false,
              ));
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
