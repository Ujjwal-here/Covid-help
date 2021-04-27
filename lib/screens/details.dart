import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
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
                            "Trauma Hospital",
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
                            " 9919937915",
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
                            " Renukoot",
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
                            " Oxygen",
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
                            " Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016",
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
                            " https://google.com/",
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
