import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class UserModel extends Equatable{
  final String name;
  final String phoneNumber;

  UserModel({ @required this.name, @required this.phoneNumber});

  @override
  List<Object> get props => [name,phoneNumber];

  factory UserModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot){
    String name = documentSnapshot.data()["name"];
    String phoneNumber = documentSnapshot.data()["phoneNumber"];

    return UserModel(name: name,phoneNumber: phoneNumber);
  }

}