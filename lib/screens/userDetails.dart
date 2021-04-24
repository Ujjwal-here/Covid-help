import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: 350,
            image: AssetImage("assets/login.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, top: 10),
            child: Text(
              "User Details",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Color.fromRGBO(37, 46, 73, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, top: 20, right: 30),
            child: Text(
              "Your Name:",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 50, right: 30),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.phone,
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(185, 189, 198, 0.5),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(20, 121, 255, 1),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.person_rounded,
                  color: Color.fromRGBO(20, 121, 255, 1),
                  size: 18,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 50, right: 30),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Next"),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(15),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(20, 121, 255, 1),
                  ),
                  textStyle: MaterialStateProperty.all(
                    GoogleFonts.nunito(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
