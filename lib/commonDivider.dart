import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonDivider extends StatelessWidget {
  final text;

  CommonDivider(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: <Widget>[
      Expanded(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Divider(
          color: Colors.grey.withOpacity(.9),
        ),
      )),
      Text(
        this.text,
        style: TextStyle(
            color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Divider(
          color: Colors.grey.withOpacity(.9),
        ),
      )),
    ]);
  }
}
