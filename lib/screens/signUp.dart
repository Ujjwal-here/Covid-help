import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            text: 'Co',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 25,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Win',
                style: GoogleFonts.nunito(
                  color: Color.fromRGBO(20, 121, 255, 1),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [],
      ),
    );
  }
}
