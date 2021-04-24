import 'package:covid_help/screens/signup.dart';
import 'package:covid_help/screens/verificationCode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      debugShowCheckedModeBanner: false,
      home: VerifCode(),
    );
  }
}
