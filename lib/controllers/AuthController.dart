import 'package:covid_help/root.dart';
import 'package:covid_help/screens/homescreen.dart';
import 'package:covid_help/screens/verificationCode.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User> _firebaseUser = Rx<User>(null);
  User get user => _firebaseUser?.value;

  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  String _verificationId;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  signIn() {
    _auth.verifyPhoneNumber(
        phoneNumber: phoneNumberController.text.trim(),
        timeout: const Duration(seconds: 60),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
  }

  verificationCompleted(PhoneAuthCredential phoneAuthCredential) async {
    await _auth.signInWithCredential(phoneAuthCredential);
    Get.off(HomeScreen());
  }

  verificationFailed(FirebaseAuthException e) {
    Get.snackbar("A problem Occured!", e.message);
  }

  codeSent(String verificationId, int resendToken) async {
    Get.to(VerifCode());
    _verificationId = verificationId;
  }

  codeAutoRetrievalTimeout(String verificationId) {
    _verificationId = verificationId;
  }

  manualPart() async {
    try {
      String otp = otpController1.text +
          otpController2.text +
          otpController3.text +
          otpController4.text +
          otpController5.text +
          otpController6.text;
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: _verificationId, smsCode: otp.trim());
      await _auth.signInWithCredential(credential);
      Get.off(HomeScreen());
    } catch (e) {
      Get.snackbar("Wrong Otp", "You have entered wrong OTP");
    }
  }

  signOut() {
    _auth.signOut();
    Get.offAll(Root());
  }
}
