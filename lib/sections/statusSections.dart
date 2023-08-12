import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/avatarImg.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dq,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          enabledBorder: InputBorder.none,
          //this will remove the existing borders
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
