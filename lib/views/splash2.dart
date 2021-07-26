import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/splash3.dart';

class Splash2 extends StatefulWidget {
  @override
  _AppSplashState createState() => _AppSplashState();
}

class _AppSplashState extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(AssetName.SplashLogo2.name),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: AppButton("GET STARTED", 60.0, 20.0, true, () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(.0),
                    child: AppButton("SIGN IN", 60.0, 20.0, false, null),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Splash3()));
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
