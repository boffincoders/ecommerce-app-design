import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final labeltext;
  final inputType;
  final obscureValue;
  final icon;

  AppInputField(this.labeltext, this.inputType, this.obscureValue, this.icon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          border: Border.all(
            color: Colors.grey.withOpacity(.6),
            width: 1,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          keyboardType: this.inputType,
          obscureText: this.obscureValue,
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
          decoration: InputDecoration(
            fillColor: Colors.grey,
            focusColor: Colors.grey,
            border: InputBorder.none,
            labelText: this.labeltext,
            labelStyle: TextStyle(color: Colors.black, fontSize: 18.0),
            suffix: this.obscureValue ? this.icon : null,
          ),
        ),
      ),
    );
  }
}
