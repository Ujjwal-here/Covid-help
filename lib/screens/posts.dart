import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/controllers/user_service_controller.dart';
import 'package:covid_help/models/service_model.dart';
import 'package:covid_help/screens/details.dart';
import 'package:covid_help/screens/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Posts extends StatelessWidget {
  final UserServicesController userServicesController = Get.put(UserServicesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "Resources you added",
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GetX<UserServicesController>(
        builder: (controller){
          if(controller.loading.value){
                  return Center(child: CircularProgressIndicator(),);
            }
            if(controller.noServices.value != ""){
                  return Center(child: Text(controller.noServices.value),);
                }
            return ListView.builder(
              itemCount: controller.services.length,
              itemBuilder: (context,index){
                ServiceModel result = controller.services[index];
                return Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "\t${result.city}",
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Type :",
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    "\t${result.serviceType.map((e) => convert(e))}",
                                    maxLines: 1,
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(()=>HelpForm(
                            editMode: true,
                            uid: result.serviceUid,
                            name: result.name,
                            other: "",
                            link: "",
                            phoneNumber: result.phoneNumber,
                            detail: result.moreDetail,                   
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
                            "Update",
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(() => Details(
                                      name: result.name,
                                      city: result.city,
                                      phoneNumber: result.phoneNumber,
                                      donationType: result.serviceType
                                          .map((e) => convert(e))
                                          .toList(),
                                      moreDetail: result.moreDetail));
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
                              fontSize: 14,
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

            });
        },
        
      ),
    );
  }
}