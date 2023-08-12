import 'package:facebook/Widgets/blueTick.dart';
import 'package:facebook/Widgets/circularButton.dart';
import 'package:facebook/Widgets/footerDetails.dart';
import 'package:facebook/Widgets/postCard.dart';
import 'package:facebook/assets.dart';

import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSections.dart';
import 'package:facebook/sections/storySections.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/headerButtons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
        thickness: 1,
        color: Colors
            .grey[300]); // to make small link segment to seperate the contends

    Widget thickDivider = Divider(thickness: 8, color: Colors.grey[300]);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            CircularButton(butIcon: Icons.search, butAction: () {}),
            CircularButton(butIcon: Icons.message_outlined, butAction: () {})
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              button1: headerButtons(
                  buttonAction: () {print("go live");},
                  colorType: Colors.red,
                  icontype:Icons.video_call,
                  buttonText:"Live"),
              button2:headerButtons(
                  buttonAction: () {print("take photo");},
                  colorType: Colors.green,
                  icontype:Icons.photo_library,
                  buttonText:"Photo"),
              button3: headerButtons(
                  buttonAction: () {print("create room");},
                  colorType: Colors.purple,
                  icontype:Icons.video_call,
                  buttonText:"Room",
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: lal,
              name: "MohanLal",
              time: "5h",
              postImage: lalPost,
              postTitle: "All The Best",
              showTick: true,
              commentCount: "10K Comments",
              shareCount: "5K Shares",
              likeCount: "60K",
              smallAvatar: lal,
            ),
            thickDivider,
            PostCard(
              avatar:dq,
              name: "Dulquer Salmaan",
              time: "1d ago",
              postImage:dqpost,
              postTitle: dqTitlePost,
              showTick: true,
              commentCount:"8K Comment" ,
              shareCount: "7K Shares",
              likeCount: "30K",
              smallAvatar: dq,
            ),
            thickDivider,
            PostCard(
              avatar:surya,
              name: "actorSurya",
              time: "12h ago",
              postImage:suryaPost,
              postTitle: "",
              showTick: true,
              commentCount:"13K Comment",
              shareCount: "10K Shares",
              likeCount: "234K",
              smallAvatar:surya,
            ),
            thickDivider,
            PostCard(
              avatar:mamooka,
              name: "Mammootty",
              time: "8.5h ago",
              postImage:mamookaPost,
              postTitle: "",
              showTick: true,
              commentCount:"20K Comment" ,
              shareCount: "15K Shares",
              likeCount: "68K",
              smallAvatar: mamooka,
            ),
            thickDivider,
            PostCard(
              avatar:fahadh,
              name: "Fahadh Faasil",
              time: "2d ago",
              postImage:fahadhPost,
              postTitle: "",
              showTick: true,
              commentCount:"70k Comment" ,
              shareCount: "30K Shares",
              likeCount: "540K",
              smallAvatar: fahadh,
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
