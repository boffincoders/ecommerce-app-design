import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/common/appInputField/appInputField.dart';
import 'package:ramni_app/commonDivider.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(children: [
      Container(
        // height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AssetName.RamniLogo.name),
                Image.asset(AssetName.RamniText.name)
              ],
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 0.0,
        child: Container(
            height: MediaQuery.of(context).size.height * .6,
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CommonDivider("SIGN IN"),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: AppInputField("User Name",
                                  TextInputType.emailAddress, false, null),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: AppInputField(
                                  "Password",
                                  TextInputType.text,
                                  true,
                                  Icon(Icons.visibility_off)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppButton("SIGN IN", 80.0, 15.0, false, () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 20.0),
                          child: Text("Forgot Password?",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18.0)),
                        ),
                      ),
                    )
                  ]),
            ))),
      )
    ]));
  }
}
