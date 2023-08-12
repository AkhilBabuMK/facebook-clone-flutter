import 'package:facebook/Widgets/avatarImg.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget OutlineButton() {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 2, color: Colors.blue.shade100),
        shape: StadiumBorder(),
      ), // to create a stadium type button
      icon: Icon(
        color: Colors.purple,
        Icons.video_call,
      ),
      onPressed: () {
        print("outLineButton Is activated");
      },
      label: Text(
        "Create \nRoom",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }

  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget sizedBox = SizedBox(
      width: 10,
    );

    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          OutlineButton(),
          sizedBox,
          Avatar(
            displayImage: dq,
            displayStatus: true,
          ),
          sizedBox,
          Avatar(
            displayImage: lal,
            displayStatus: true,
          ),
          sizedBox,
          Avatar(
            displayImage: mamooka,
            displayStatus: true,
          ),
          sizedBox,
          Avatar(
            displayImage: strell,
            displayStatus: true,
          ),
          sizedBox,
          Avatar(
            displayImage:surya,
            displayStatus: true,
          ),
          sizedBox,
          Avatar(
            displayImage: fahadh,
            displayStatus: true,
          ),
          sizedBox,
        ],
      ),
    );
  }
}
