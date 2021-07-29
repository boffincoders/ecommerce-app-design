import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/login.dart';
import 'package:ramni_app/views/signUp.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Positioned(
            top: 0.0,
            bottom: 0.2,
            left:0.0 ,
            right: 0.0,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top:100),
                    child: Image.asset(AssetName.SuccessIcon.name,),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Text(
                        "Your Order",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                      child: Text(
                        "Has Been Accepted",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20),
                        child: Text(
                          "Your items has been placed and is on it's way to being processed",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppButton("TRACK ORDER", 60.0, 20.0, false, () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => SignUp()));
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: AppButton("BACK TO HOME", 30.0, 10.0, true, () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => Login()));
                            }),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
