import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ServiceModel extends Equatable{

  final Type type;
  final String name;
  final String address;
  final String phoneNumber;
  final int upvotes;


  ServiceModel({@required this.type,
                @required this.address,
                @required this.name,
                @required this.phoneNumber,
                @required this.upvotes
  });
  

  @override
  List<Object> get props => [type,name,address,phoneNumber];

  factory ServiceModel.fromDocumentSnapshot(DocumentSnapshot ds){
    return ServiceModel(type: ds.data()["type"], 
    address: ds.data()["address"], 
    name: ds.data()["name"], 
    phoneNumber: ds.data()["phoneNumber"], 
    upvotes: ds.data()["upvotes"]);
  }

}