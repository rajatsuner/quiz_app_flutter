import 'package:flutter/material.dart';
import '../reusableWidgets/Responsive.dart';
import 'submitButton.dart';
import 'textFields.dart';
import 'toggleButtons.dart';
import 'alreadyUserLogin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width:  screenWidth(context),
        height: screenHeight(context),
        decoration: pageDecoration(),  /// See Below.............................
        child: SingleChildScrollView(
          child: bodyContainer(),     //////See Below...................
        ),
      ),
    );
  }

  Container bodyContainer() {
    return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? screenWidth(context)
          : screenWidth(context) / 2,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          registerText(),         /// See Below.............................
          toggleForStudentFaculty(),
          textFieldName(),
          textFieldEmail(),
          textFieldPassword(),
          buttonSubmit(),
          alreadyUserLogin(context),
        ],
      ),
    );
  }

  Widget registerText() {
    return const Text(
      "Register Now",
      style: TextStyle(
      fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
    );
  }

  BoxDecoration pageDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.deepOrange,
          Colors.orangeAccent,
          Colors.grey,
          Colors.blueGrey,
          Colors.blueAccent,
          Colors.blue,
        ],stops: [0.1,0.3,0.5,0.6,0.8,1],
            begin: Alignment.bottomRight,end: Alignment.topLeft));
  }


}