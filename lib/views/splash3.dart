import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/login.dart';
import 'package:ramni_app/views/signUp.dart';

class Splash3 extends StatefulWidget {
  @override
  _AppSplashState createState() => _AppSplashState();
}

class _AppSplashState extends State<Splash3> {
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
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Image.asset(AssetName.RamniLogo.name),
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    child: Image.asset(AssetName.RamniText.name),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Image.asset(AssetName.SplashLogo3.name),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: AppButton("GET STARTED", 60.0, 20.0, true, (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(.0),
                    child: AppButton("SIGN IN", 60.0, 20.0, false, (){
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
    );
  }
}
