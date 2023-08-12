import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;

  Avatar({required this.displayImage, required this.displayStatus,this.displayBorder=false});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    if (displayStatus == true) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Colors.white,
              )),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }

    return Stack(
      children: [

        Container(

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder ? Border.all(color: Colors.blueAccent,width: 3) : Border()
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
        ),
        statusIndicator,
      ],
    );
  }
}
