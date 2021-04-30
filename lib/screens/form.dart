import 'dart:ffi';

import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/form_conttroller.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpForm extends StatefulWidget {
  @override
  _HelpFormState createState() => _HelpFormState();
}

class _HelpFormState extends State<HelpForm> {
  final FormController formController = Get.put(FormController());

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
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Text(
              "Please add resource by filling right information",
              style: GoogleFonts.lato(
                fontSize: 15,
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
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.teal[900],
                  ),
                ),
                Text(
                  "Enter your name below",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.teal,
                  ),
                ),
                Container(
                  child: TextField(
                    controller: formController.nameController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.lato(
                      fontSize: 19,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
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
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.purple[900],
                  ),
                ),
                Text(
                  "Check types specified below ",
                  style: GoogleFonts.lato(
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
                        value: formController.isPlasmaSelected,
                        onChanged: (value) {
                          if (!formController.isPlasmaSelected) {
                            formController.addServiceType(Services.Blood);
                          } else {
                            formController.removeService(Services.Blood);
                          }
                          setState(() {
                            formController.isPlasmaSelected =
                                !formController.isPlasmaSelected;
                          });
                        },
                        fillColor: MaterialStateProperty.all(Colors.red),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Plasma",
                          style: GoogleFonts.lato(
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
                      color: Colors.cyan[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: formController.isHospitalBedsSelected,
                        onChanged: (value) {
                          if (!formController.isHospitalBedsSelected) {
                            formController.addServiceType(Services.Beds);
                          } else {
                            formController.removeService(Services.Beds);
                          }
                          setState(() {
                            formController.isHospitalBedsSelected =
                                !formController.isHospitalBedsSelected;
                          });
                        },
                        fillColor: MaterialStateProperty.all(Colors.cyan),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Hospital Beds",
                          style: GoogleFonts.lato(
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
                        value: formController.isOxygenSelected,
                        onChanged: (value) {
                          if (!formController.isOxygenSelected) {
                            formController.addServiceType(Services.Oxygen);
                          } else {
                            formController.removeService(Services.Oxygen);
                          }
                          setState(() {
                            formController.isOxygenSelected =
                                !formController.isOxygenSelected;
                          });
                          print(formController.typeOfServices);
                        },
                        fillColor: MaterialStateProperty.all(Colors.indigo),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Oxygen",
                          style: GoogleFonts.lato(
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
                        value: formController.isMedicineSelected,
                        onChanged: (value) {
                          if (!formController.isMedicineSelected) {
                            formController.addServiceType(Services.Medicine);
                          } else {
                            formController.removeService(Services.Medicine);
                          }
                          setState(() {
                            formController.isMedicineSelected =
                                !formController.isMedicineSelected;
                          });
                        },
                        fillColor: MaterialStateProperty.all(Colors.orange),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Medicine",
                          style: GoogleFonts.lato(
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
                      color: Colors.teal[100],
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: formController.isFoodSelected,
                        onChanged: (value) {
                          if (!formController.isFoodSelected) {
                            formController.addServiceType(Services.Food);
                          } else {
                            formController.removeService(Services.Food);
                          }
                          setState(() {
                            formController.isFoodSelected =
                                !formController.isFoodSelected;
                          });
                        },
                        fillColor: MaterialStateProperty.all(Colors.teal),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Food",
                          style: GoogleFonts.lato(
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
                        value: formController.isAmbulanceSelected,
                        onChanged: (value) {
                          if (!formController.isAmbulanceSelected) {
                            formController.addServiceType(Services.Ambulance);
                          } else {
                            formController.removeService(Services.Ambulance);
                          }
                          setState(() {
                            formController.isAmbulanceSelected =
                                !formController.isAmbulanceSelected;
                          });
                        },
                        fillColor: MaterialStateProperty.all(Colors.pink),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "Ambulance Service",
                          style: GoogleFonts.lato(
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
                            value: formController.isOtherSelected,
                            onChanged: (value) {
                              if (!formController.isOtherSelected) {
                                formController.addServiceType(Services.Others);
                              } else {
                                formController.removeService(Services.Others);
                              }
                              setState(() {
                                formController.isOtherSelected =
                                    !formController.isOtherSelected;
                              });
                            },
                            fillColor:
                                MaterialStateProperty.all(Colors.deepOrange),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Others",
                              style: GoogleFonts.lato(
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
                          controller: formController.otherController,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.multiline,
                          style: GoogleFonts.lato(
                            fontSize: 19,
                            color: Colors.black,
                            //fontWeight: FontWeight.bold,
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
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue[900],
                  ),
                ),
                Text(
                  "Select your location",
                  style: GoogleFonts.lato(
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
                    selectedItemStyle: GoogleFonts.lato(),
                    dropdownHeadingStyle: GoogleFonts.lato(color: Colors.white),
                    dropdownItemStyle: GoogleFonts.lato(),
                    flagState: CountryFlag.DISABLE,
                    onCountryChanged: (value) {
                      print(value);
                    },
                    onCityChanged: (value) {
                      formController.city = value;
                    },
                    onStateChanged: (value) {
                      formController.state = value;
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
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.green[800],
                  ),
                ),
                Text(
                  "Add working phone numbers",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: TextField(
                    controller: formController.phoneNumberController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.lato(
                      fontSize: 19,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                    maxLines: null,
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
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red[800],
                  ),
                ),
                Text(
                  "You can provide link to some resource",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                Container(
                  child: TextField(
                    controller: formController.linkController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.lato(
                      fontSize: 19,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                    maxLines: null,
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
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.indigo[800],
                  ),
                ),
                Text(
                  "You can provide details like address,blood type",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
                Container(
                  child: TextField(
                    controller: formController.detailController,
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.lato(
                      fontSize: 19,
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                    ),
                    maxLines: null,
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
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                formController.postForm();
              },
              child: Text("Submit"),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(26, 99, 209, 1),
                  ),
                  textStyle: MaterialStateProperty.all(
                    GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to home"),
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
    );
  }
}
