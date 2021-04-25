import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "Covid Help Resource",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Color.fromRGBO(37, 46, 73, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, right: 30),
            child: Text(
              "Help people out in this pandemic by donating something",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add type",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color.fromRGBO(37, 46, 73, 1),
                  ),
                ),
                Text(
                  "Check types specified below ",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Plasma",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Hospital beds-with Oxygen",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Hospital beds-without Oxygen",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oxygen",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Remdesivir",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Medicines",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Food",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Ambulance",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(37, 46, 73, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: null),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Others",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromRGBO(37, 46, 73, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, right: 30),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(185, 189, 198, 0.5),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(20, 121, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            border: InputBorder.none,
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
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "State",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color.fromRGBO(37, 46, 73, 1),
                  ),
                ),
                Text(
                  "add city to help people find your resource easily ",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 30),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(185, 189, 198, 0.5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "City",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color.fromRGBO(37, 46, 73, 1),
                  ),
                ),
                Text(
                  "add city to help people find your resource easily ",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 30),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(185, 189, 198, 0.5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Link",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color.fromRGBO(37, 46, 73, 1),
                  ),
                ),
                Text(
                  "add city to help people find your resource easily ",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 30),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(185, 189, 198, 0.5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "More details",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color.fromRGBO(37, 46, 73, 1),
                  ),
                ),
                Text(
                  "add further details like address, blood type etc.  ",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 30),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(185, 189, 198, 0.5),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
