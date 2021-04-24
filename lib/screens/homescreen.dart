import 'package:covid_help/controllers/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            width: double.infinity,
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(28, 132, 232, 1),
                  Color.fromRGBO(2, 156, 246, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  "assets/Drcorona.svg",
                  height: 130,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Stay home",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Save lives",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Text(
                        "Wear your mask,\nProtect your family and others",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              "Filters",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(37, 46, 73, 0.8),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 120,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(133, 79, 236, 1),
                        Color.fromRGBO(204, 119, 250, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Oxygen",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(71, 138, 251, 1),
                        Color.fromRGBO(115, 166, 252, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ambulance",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(71, 138, 251, 1),
                        Color.fromRGBO(115, 166, 252, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ambulance",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(71, 138, 251, 1),
                        Color.fromRGBO(115, 166, 252, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ambulance",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Donation",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white70,
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
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              "Search Results",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(37, 46, 73, 0.8),
              ),
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "AIIMS Hospital",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(23, 185, 128, 0.4),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  "Available",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color.fromRGBO(23, 185, 128, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                child: Text(
                                  "Updated 15hrs ago",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color.fromRGBO(37, 46, 73, 0.6),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "City ------------->",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " Renukoot",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Phone number ------------->",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " 9919937915",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Filter Type ------------->",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  " Hospital beds",
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
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
          authController.signOut();
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.logout,
          color: Colors.black,
        ),
      ),
    );
  }
}
