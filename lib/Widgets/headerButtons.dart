import 'package:flutter/material.dart';
Widget headerButtons(
    {required IconData icontype,
      required Color colorType,
      required String buttonText,
      Color TextColor = Colors.blue,
      required void Function() buttonAction}) {
  return TextButton.icon(
    icon: Icon(
      icontype,
      color: colorType,
    ),
    label: Text(buttonText,style: TextStyle(color:TextColor),),
    onPressed: buttonAction,
  );
}