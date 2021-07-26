import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final text;
  final horizontalValue;
  final verticalValue;
  final isStarted;
  final action;

  AppButton(this.text, this.horizontalValue, this.verticalValue, this.isStarted,
      this.action);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: this.action,
      child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: this.horizontalValue, vertical: this.verticalValue),
          decoration: BoxDecoration(
              color: isStarted ? Colors.white : Colors.red,
              borderRadius: BorderRadius.circular(40.0)),
          child: Text(
            this.text,
            style: TextStyle(
                color: isStarted ? Colors.red : Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
