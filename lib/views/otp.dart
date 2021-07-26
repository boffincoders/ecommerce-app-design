import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ramni_app/common/appButton/appButton.dart';
import 'package:ramni_app/commonDivider.dart';
import 'package:ramni_app/enum/assets.dart';
import 'package:ramni_app/views/welcome.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            color: Colors.red,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
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
          new Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBar(
                leading: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                        child: Image.asset(AssetName.ArrowLeft.name))),
                backgroundColor: Colors.red, //You can make this transparent
                elevation: 0.0, //No shadow
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
                          child: CommonDivider("OTP VERIFICATION"),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.0),
                          child: Text.rich(TextSpan(
                              text: 'OTP HAS BEEN SENT TO ',
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '9815970877',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                )
                              ])),
                        ),
                        Expanded(
                          child: Form(
                            key: formKey,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 30),
                                child: PinCodeTextField(
                                  appContext: context,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  pastedTextStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  length: 4,
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  blinkWhenObscuring: true,
                                  animationType: AnimationType.fade,
                                  validator: (v) {},
                                  pinTheme: PinTheme(
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(5),
                                      fieldHeight: 50,
                                      fieldWidth: 50,
                                      borderWidth: 1,
                                      selectedFillColor:
                                          Colors.grey.withOpacity(.2),
                                      selectedColor:
                                          Colors.grey.withOpacity(.2),
                                      activeColor: Colors.grey.withOpacity(.2),
                                      inactiveColor:
                                          Colors.grey.withOpacity(.2),
                                      inactiveFillColor:
                                          Colors.grey.withOpacity(.2),
                                      activeFillColor:
                                          Colors.grey.withOpacity(.2)),
                                  cursorColor: Colors.black,
                                  animationDuration:
                                      Duration(milliseconds: 300),
                                  enableActiveFill: true,
                                  keyboardType: TextInputType.number,
                                  boxShadows: [
                                    BoxShadow(
                                      offset: Offset(0, 1),
                                      color: Colors.black12,
                                      blurRadius: 10,
                                    )
                                  ],
                                  onCompleted: (v) {},
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                )),
                          ),
                        ),
                        AppButton("VERIFY OTP", 80.0, 15.0, false, () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()));
                        }),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "00.30",
                                  style: TextStyle(
                                      color: Colors.grey.withOpacity(.4),
                                      fontSize: 18.0),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  "Resend OTP",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                ))),
          )
        ]));
  }
}
