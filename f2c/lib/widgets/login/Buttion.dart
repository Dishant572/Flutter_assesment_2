import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget Button_(
    {String? title,
    onpress,
    Color? color,
    Color? textcolor,
    double? textsize}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    child: title!.text.color(textcolor).size(textsize).make(),
  );
}
