import 'package:facebook/Widgets/avatarImg.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/circularButton.dart';
//import 'package:facebook/sizing.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStatus;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStatus = false});

  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Container(
      width: 350,

      //  width: SizeConfig.safeBlockHorizontal * 55,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(story),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createStatus
                  ? CircularButton(
                      butIcon: Icons.add,
                      butAction: () {
                        print("create");
                      },
                      iconColor: Colors.blue,
                    )
                  : Avatar(
                      displayImage: avatar,
                      displayStatus: false,
                      displayBorder: true,
                    )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "n/a",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
