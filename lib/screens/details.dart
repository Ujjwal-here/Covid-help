import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {

  final String name;
  final String phoneNumber;
  final String city;
  final String donationType;
  final String link;
  final String moreDetail;

  Details({Key key, 
  @required this.name,
  @required this.city,
  @required this.phoneNumber,
  @required this.donationType,
  this.link,
  @required this.moreDetail
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black54,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            name,
                            style: GoogleFonts.nunito(
                              fontSize: 22,
                              color: Color.fromRGBO(37, 46, 73, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Updated a day ago",
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: Color.fromRGBO(185, 189, 198, 1),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 121, 255, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                      ),
                      child: Text(
                        "Available",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(185, 189, 198, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Phone :",
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Color.fromRGBO(37, 46, 73, 1),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            phoneNumber,
                            style: GoogleFonts.nunito(
                              fontSize: 17,
                              color: Color.fromRGBO(20, 121, 255, 1),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(185, 189, 198, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "City :",
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Color.fromRGBO(37, 46, 73, 1),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            city,
                            style: GoogleFonts.nunito(
                              fontSize: 17,
                              color: Color.fromRGBO(20, 121, 255, 1),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(185, 189, 198, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Donation type :",
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Color.fromRGBO(37, 46, 73, 1),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                           donationType,
                            style: GoogleFonts.nunito(
                              fontSize: 17,
                              color: Color.fromRGBO(20, 121, 255, 1),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(185, 189, 198, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "More details :",
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Color.fromRGBO(37, 46, 73, 1),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            moreDetail == null?"":moreDetail,
                            style: GoogleFonts.nunito(
                              fontSize: 17,
                              color: Color.fromRGBO(20, 121, 255, 1),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(185, 189, 198, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(185, 189, 198, 0.5),
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Link :",
                          style: GoogleFonts.nunito(
                            fontSize: 17,
                            color: Color.fromRGBO(37, 46, 73, 1),
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            link==null?"":link,
                            style: GoogleFonts.nunito(
                              fontSize: 17,
                              color: Color.fromRGBO(20, 121, 255, 1),
                              //fontWeight: FontWeight.bold,
                            ),
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
    );
  }
}
