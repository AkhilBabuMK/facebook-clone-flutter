import 'package:flutter/material.dart';


class CircularButton extends StatelessWidget{

  final IconData butIcon;
  final void Function() butAction;
  final Color iconColor;


  CircularButton({
    required this.butIcon,
    required this.butAction,
    this.iconColor = Colors.black
  });


  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        icon: Icon(butIcon,
        color: iconColor,
        size: 25,),
        onPressed:butAction,
      ),
    );
  }
}
