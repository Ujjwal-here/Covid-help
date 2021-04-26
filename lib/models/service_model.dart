import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:covid_help/Enums/type_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ServiceModel extends Equatable{

  final Services serviceType;
  final String name;
  final String city;
  final String state;
  final String phoneNumber;
  final int upvotes;


  ServiceModel({@required this.serviceType,
                @required this.city,
                @required this.state,
                @required this.name,
                @required this.phoneNumber,
                @required this.upvotes
  });
  

  @override
  List<Object> get props => [serviceType,name,city,state,phoneNumber];

  factory ServiceModel.fromDocumentSnapshot(DocumentSnapshot ds){
    return ServiceModel(serviceType: ds.data()["type"], 
    city: ds.data()["address"], 
    state: ds.data()["state"],
    name: ds.data()["name"], 
    phoneNumber: ds.data()["phoneNumber"], 
    upvotes: ds.data()["upvotes"]);
  }

}