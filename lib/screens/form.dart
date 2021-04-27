import 'package:csc_picker/csc_picker.dart';
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
            margin: EdgeInsets.only(right: 30),
            child: Text(
              "Please add resource by filling right information",
              style: GoogleFonts.nunito(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.teal[100],
              ),
            ),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name:",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.teal[900],
                  ),
                ),
                Text(
                  "Enter your name below",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.teal,
                  ),
                ),
                Container(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal[400],
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.purple[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.purple[100],
              ),
            ),
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add type",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.purple[900],
                  ),
                ),
                Text(
                  "Check types specified below ",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.purple,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.red[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.red),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Plasma",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.red[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Hospital beds-with Oxygen",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.cyan[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.cyan),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Hospital beds-without Oxygen",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.cyan[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.indigo[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.indigo),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oxygen",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.indigo[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.orange[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.orange),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Remedesivir",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.orange[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.green[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.green),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Medicines",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.green[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.teal[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.teal),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Food",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.teal[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.pink[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: null,
                        fillColor: MaterialStateProperty.all(Colors.pink),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Ambulance Service",
                          style: GoogleFonts.nunito(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.pink[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.deepOrange[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: null,
                            fillColor:
                                MaterialStateProperty.all(Colors.deepOrange),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Others",
                              style: GoogleFonts.nunito(
                                //fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.deepOrange[900],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(bottom: 20, left: 40, right: 30),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(20, 121, 255, 1),
                              ),
                              borderRadius: BorderRadius.circular(5),
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
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue[100],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Region",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue[900],
                  ),
                ),
                Text(
                  "Select your location",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: CSCPicker(
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue[400],
                      ),
                    ),
                    disabledDropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.blue[100],
                      ),
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
                      //serviceController.city = value?.toLowerCase();
                    },
                    onStateChanged: (value) {
                      //serviceController.state = value?.toLowerCase();
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.green[100],
              ),
            ),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Phone number:",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green[800],
                  ),
                ),
                Text(
                  "Add working phone numbers",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[400],
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.red[100],
              ),
            ),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Link",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red[800],
                  ),
                ),
                Text(
                  "You can provide links",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                Container(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red[400],
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigo[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.indigo[100],
              ),
            ),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "More details:",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.indigo[800],
                  ),
                ),
                Text(
                  "You can provide more details like address,blood type etc",
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
                Container(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo[400],
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 121, 255, 1),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
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
