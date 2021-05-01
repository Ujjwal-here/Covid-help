import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/form_conttroller.dart';
import 'package:covid_help/widgets/sizeConfig.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpForm extends StatefulWidget {
  final bool editMode;
  final String uid;
  final String name;
  final String phoneNumber;
  final String detail;
  final String other;
  final String link;

  HelpForm(
      {Key key,
      @required this.editMode,
      this.uid,
      this.detail,
      this.link,
      this.name,
      this.other,
      this.phoneNumber});

  @override
  _HelpFormState createState() => _HelpFormState();
}

class _HelpFormState extends State<HelpForm> {
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final FormController formController = Get.put(FormController(
      name: widget.name,
      detail: widget.detail,
      other: widget.other,
      link: widget.link,
      phoneNumber: widget.phoneNumber,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "Co",
                style: GoogleFonts.lato(
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                "Help",
                style: GoogleFonts.lato(
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  color: const Color.fromRGBO(214, 61, 22, 1),
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GetX<FormController>(
          builder: (controller) {
            return Stack(children: [
              Opacity(
                  opacity: controller.loading.value ? 1 : 0,
                  child: Center(
                    child: CircularProgressIndicator(),
                  )),
              Opacity(
                opacity: controller.loading.value ? 0.5 : 1,
                child: ListView(
                  padding: const EdgeInsets.all(30),
                  children: [
                    Text(
                      "Covid Help Resource",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        fontSize: SizeConfig.safeBlockHorizontal * 6,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Please add resource by filling right information",
                      style: GoogleFonts.lato(
                        fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                        color: Colors.grey,
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
                      margin: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name:",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              color: Colors.teal[900],
                            ),
                          ),
                          Text(
                            "Enter your name below",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              color: Colors.teal,
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: controller.nameController,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              style: GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                              ),
                              maxLines: null,
                              focusNode: focusNode1,
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
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              color: Colors.purple[900],
                            ),
                          ),
                          Text(
                            "Check types specified below ",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
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
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: controller.isPlasmaSelected,
                                  onChanged: (value) {
                                    if (!controller.isPlasmaSelected) {
                                      controller
                                          .addServiceType(Services.Plasma);
                                    } else {
                                      controller.removeService(Services.Plasma);
                                    }
                                    setState(() {
                                      formController.isPlasmaSelected =
                                          !formController.isPlasmaSelected;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.all(Colors.red),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Plasma",
                                    style: GoogleFonts.lato(
                                      //fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
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
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: formController.isHospitalBedsSelected,
                                  onChanged: (value) {
                                    if (!formController
                                        .isHospitalBedsSelected) {
                                      formController
                                          .addServiceType(Services.Beds);
                                    } else {
                                      formController
                                          .removeService(Services.Beds);
                                    }
                                    setState(() {
                                      formController.isHospitalBedsSelected =
                                          !formController
                                              .isHospitalBedsSelected;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.all(Colors.cyan),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Hospital Beds",
                                    style: GoogleFonts.lato(
                                      //fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
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
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: formController.isOxygenSelected,
                                  onChanged: (value) {
                                    if (!formController.isOxygenSelected) {
                                      formController
                                          .addServiceType(Services.Oxygen);
                                    } else {
                                      formController
                                          .removeService(Services.Oxygen);
                                    }
                                    setState(() {
                                      formController.isOxygenSelected =
                                          !formController.isOxygenSelected;
                                    });
                                    print(formController.typeOfServices);
                                  },
                                  fillColor:
                                      MaterialStateProperty.all(Colors.indigo),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Oxygen",
                                    style: GoogleFonts.lato(
                                      //fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
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
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: formController.isMedicineSelected,
                                  onChanged: (value) {
                                    if (!formController.isMedicineSelected) {
                                      formController
                                          .addServiceType(Services.Medicine);
                                    } else {
                                      formController
                                          .removeService(Services.Medicine);
                                    }
                                    setState(() {
                                      formController.isMedicineSelected =
                                          !formController.isMedicineSelected;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.all(Colors.orange),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Medicine",
                                    style: GoogleFonts.lato(
                                      //fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
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
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: formController.isFoodSelected,
                                  onChanged: (value) {
                                    if (!formController.isFoodSelected) {
                                      formController
                                          .addServiceType(Services.Food);
                                    } else {
                                      formController
                                          .removeService(Services.Food);
                                    }
                                    setState(() {
                                      formController.isFoodSelected =
                                          !formController.isFoodSelected;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.all(Colors.teal),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Food",
                                    style: GoogleFonts.lato(
                                      //fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
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
                                      formController
                                          .addServiceType(Services.Ambulance);
                                    } else {
                                      formController
                                          .removeService(Services.Ambulance);
                                    }
                                    setState(() {
                                      formController.isAmbulanceSelected =
                                          !formController.isAmbulanceSelected;
                                    });
                                  },
                                  fillColor:
                                      MaterialStateProperty.all(Colors.pink),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Ambulance Service",
                                    style: GoogleFonts.lato(
                                      //fontWeight: FontWeight.bold,
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
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
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: formController.isBloodSelected,
                                      onChanged: (value) {
                                        if (!formController.isBloodSelected) {
                                          formController
                                              .addServiceType(Services.Blood);
                                        } else {
                                          formController
                                              .removeService(Services.Blood);
                                        }
                                        setState(() {
                                          formController.isBloodSelected =
                                              !formController.isBloodSelected;
                                        });
                                      },
                                      fillColor: MaterialStateProperty.all(
                                          Colors.deepOrange),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Blood",
                                        style: GoogleFonts.lato(
                                          //fontWeight: FontWeight.bold,
                                          fontSize:
                                              SizeConfig.safeBlockHorizontal *
                                                  4,
                                          color: Colors.deepOrange[900],
                                        ),
                                      ),
                                    ),
                                  ],
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
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              color: Colors.blue[900],
                            ),
                          ),
                          Text(
                            "Select your location",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
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
                              selectedItemStyle: GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              ),
                              dropdownHeadingStyle:
                                  GoogleFonts.lato(color: Colors.white),
                              dropdownItemStyle: GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              ),
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
                      margin: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone number:",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              color: Colors.green[800],
                            ),
                          ),
                          Text(
                            "Add working phone numbers",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: formController.phoneNumberController,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              style: GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                              ),
                              maxLines: null,
                              focusNode: focusNode2,
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
                      margin: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Link",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              color: Colors.red[800],
                            ),
                          ),
                          Text(
                            "You can provide link to some resource",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: formController.linkController,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              style: GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                              ),
                              maxLines: null,
                              focusNode: focusNode3,
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
                      margin: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "More details:",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                              color: Colors.indigo[800],
                            ),
                          ),
                          Text(
                            "You can provide details like address,blood type etc.",
                            style: GoogleFonts.lato(
                              fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                              color: Colors.indigo,
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: formController.detailController,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              style: GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                              ),
                              maxLines: null,
                              focusNode: focusNode4,
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
                      margin: const EdgeInsets.only(top: 30),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          focusNode1.unfocus();
                          focusNode2.unfocus();
                          focusNode3.unfocus();
                          focusNode4.unfocus();
                          widget.editMode
                              ? formController.editForm(widget.uid)
                              : formController.postForm();
                        },
                        child: Text("Submit"),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(15),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(26, 99, 209, 1),
                            ),
                            textStyle: MaterialStateProperty.all(
                              GoogleFonts.lato(
                                fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
