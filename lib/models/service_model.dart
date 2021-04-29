import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_help/Enums/service_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ServiceModel extends Equatable {
  final List<Services> serviceType;
  final String name;
  final String city;
  final String state;
  final String phoneNumber;
  final int upvotes;
  final String moreDetail;

  ServiceModel(
      {this.serviceType,
      @required this.city,
      @required this.state,
      @required this.name,
      @required this.phoneNumber,
      @required this.upvotes,
      this.moreDetail});

  @override
  List<Object> get props => [serviceType, name, city, state, phoneNumber];

  factory ServiceModel.fromDocumentSnapshot(DocumentSnapshot ds) {
    return ServiceModel(
        serviceType: ds.data()["type"],
        city: ds.data()["address"],
        state: ds.data()["state"],
        name: ds.data()["name"],
        phoneNumber: ds.data()["phoneNumber"],
        upvotes: ds.data()["upvotes"]);
  }
}
