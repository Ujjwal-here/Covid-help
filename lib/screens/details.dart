import 'package:covid_help/widgets/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String daysToString(int days) {
  if (days == 0) {
    return "Updated today";
  } else {
    return "Updated $days days ago";
  }
}

class Details extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String city;
  final List<String> donationType;
  final String link;
  final String moreDetail;
  final DateTime postDateTime;
  

  Details(
      {Key key,
      @required this.name,
      @required this.city,
      @required this.phoneNumber,
      @required this.donationType,
      this.link,
      @required this.moreDetail,
      @required this.postDateTime,});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Covid",
                style: GoogleFonts.lato(
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Help",
                style: GoogleFonts.lato(
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  color: const Color.fromRGBO(214, 61, 22, 1),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(244, 246, 248, 1),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(214, 61, 22, 1),
                    Color.fromRGBO(239, 92, 54, 1),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("assets/doctor.png"),
                    height: SizeConfig.blockSizeVertical * 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Stay Home",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.safeBlockHorizontal * 5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Stay Safe",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Text(
                          "Wear Mask And \nStop Covid",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.safeBlockHorizontal * 3.1,
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
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(54, 121, 218, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.lato(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Text(
                      "${daysToString(postDateTime.difference(DateTime.now()).inDays)}",
                      style: GoogleFonts.lato(
                        fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white12,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Phone :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                style: GoogleFonts.lato(
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 3.8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  phoneNumber,
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3.8,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white60),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "City :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                  style: GoogleFonts.nunito(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  city == null ? "Not Provided" : city,
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3.8,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white60),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Donation type :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  donationType == null
                                      ? "Not Provided"
                                      : "${donationType.map((e) => (e))}",
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3.8,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white60),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "More details :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  moreDetail == null
                                      ? "Not Provided"
                                      : moreDetail,
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3.8,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white30),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Link :\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                                style: GoogleFonts.lato(
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 3.8,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  link == null ? "Not Provided" : link,
                                  style: GoogleFonts.lato(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 3.8,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
