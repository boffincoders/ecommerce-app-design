import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/common/appInputField/appInputField.dart';
import 'package:ramni_app/commonDivider.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/otp.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(children: [
      Positioned(
        top: 0.0,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Image.asset(AssetName.ArrowLeft.name),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: Center(
                  child: Container(
                    child: Image.asset(
                      AssetName.RamniLogo.name,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 0.0,
        child: Container(
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
            ),
            child: Center(
                child: Container(
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CommonDivider("SIGN UP"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AppInputField(
                            "Enter Name", TextInputType.text, false, null),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AppInputField("Enter Email",
                            TextInputType.emailAddress, false, null),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AppInputField("Enter Mobile Number",
                            TextInputType.phone, false, null),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AppInputField(
                            "Enter Password", TextInputType.text, true, null),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AppInputField(
                            "Confirm Password", TextInputType.text, true, null),
                      ),
                      AppButton("NEXT", 80.0, 15.0, false, () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Otp()));
                      }),
                    ]),
              ),
            ))),
      )
    ]));
  }
}
