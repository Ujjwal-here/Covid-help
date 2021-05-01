import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


String daysToString(int days){
  if(days == 0){
    return "Updated today";
  }
  else{
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
      @required this.postDateTime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 248, 1),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Color.fromRGBO(54, 121, 218, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage("assets/doctor.png"),
                  height: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Stay home",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Save lives",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
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
                        style: GoogleFonts.lato(
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
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200], blurRadius: 20, spreadRadius: 2)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "${daysToString(postDateTime.difference(DateTime.now()).inDays)}",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  color: Color.fromRGBO(244, 246, 248, 1),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Phone :",
                          style: GoogleFonts.lato(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            phoneNumber,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(244, 246, 248, 1),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "City :",
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            city == null ? "Not Provided" : city,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Color.fromRGBO(26, 99, 209, 1),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(244, 246, 248, 1),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Donation type :",
                          style: GoogleFonts.lato(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            donationType == null
                                ? "Not Provided"
                                : "${donationType.map((e) => (e))}",
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(244, 246, 248, 1),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "More details :",
                          style: GoogleFonts.lato(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            moreDetail == null ? "Not Provided" : moreDetail,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Color.fromRGBO(26, 99, 209, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(244, 246, 248, 1),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Link :",
                          style: GoogleFonts.lato(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            link == null ? "Not Provided" : link,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Color.fromRGBO(26, 99, 209, 1),
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
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(15),
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
    );
  }
}
