import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/type_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ServiceModel extends Equatable{

  final TypeOf type;
  final String name;
  final String city;
  final String state;
  final String phoneNumber;
  final int upvotes;


  ServiceModel({@required this.type,
                @required this.city,
                @required this.state,
                @required this.name,
                @required this.phoneNumber,
                @required this.upvotes
  });
  

  @override
  List<Object> get props => [type,name,city,state,phoneNumber];

  factory ServiceModel.fromDocumentSnapshot(DocumentSnapshot ds){
    return ServiceModel(type: ds.data()["type"], 
    city: ds.data()["address"], 
    state: ds.data()["state"],
    name: ds.data()["name"], 
    phoneNumber: ds.data()["phoneNumber"], 
    upvotes: ds.data()["upvotes"]);
  }

}