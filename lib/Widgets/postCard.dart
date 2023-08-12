import 'package:facebook/Widgets/avatarImg.dart';
import 'package:facebook/Widgets/blueTick.dart';
import 'package:facebook/Widgets/footerDetails.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/Widgets/headerButtons.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String postTitle;
  final String postImage;
  final bool showTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String smallAvatar;

  PostCard(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.postTitle,
      required this.postImage,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount,
      required this.smallAvatar,
      this.showTick = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          title(),
          img(),
          footerDetails(),
          thinDivider,
          HeaderButtonSection(
            button1: headerButtons(
                buttonAction: () {
                  print("Like this post");
                },
                colorType: Colors.grey,
                icontype: Icons.thumb_up_alt_outlined,
                buttonText: "Like",
                TextColor: Colors.grey.shade600),
            button2: headerButtons(
                buttonAction: () {
                  print("Comment on this post");
                },
                colorType: Colors.grey,
                icontype: Icons.message_outlined,
                buttonText: "Comment",
                TextColor: Colors.grey.shade600),
            button3: headerButtons(
                buttonAction: () {
                  print("Share this post");
                },
                colorType: Colors.grey,
                icontype: Icons.share_outlined,
                buttonText: "Share",
                TextColor: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(name),
          SizedBox(
            width: 10,
          ),
          showTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(children: [
        Text(time == null ? "" : time),
        SizedBox(width: 10),
        Icon(
          Icons.public,
          size: 15,
        )
      ]),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz),
      ),
    );
  }

  Widget title() {
    return postTitle != null && postTitle != ""
        ? Container(

            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 5.0,bottom: 5.0),
                child: Text(
                  postTitle == null ? "" : postTitle,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          )
        : SizedBox();
  }

  Widget img() {
    return Container(
      padding: EdgeInsets.only(top: 3, bottom: 3),
      width: 400,
      height:500,
      child: Image.asset(postImage,fit:BoxFit.cover

        ,),
    );
  }

  Widget footerDetails() {
    return Container(
      padding: EdgeInsets.only(top: 3),
      height: 30,
      child: Row(
        children: [

          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.thumb_up,
                  size: 20,
                ),
                color: Colors.blue,
                padding: EdgeInsets.only(top: 0),
              ),
            ],
          ),
          Row(children: [


          displayText(label: likeCount),
          SizedBox(
            width: 70,
          ),
          displayText(label: commentCount),
          SizedBox(
            width: 10,
          ),
          displayText(label: shareCount),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 25,
            height: 25,
            child: Avatar(
              displayImage: smallAvatar,
              displayStatus: false,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Icon(Icons.arrow_drop_down, color: Colors.grey[600]),]),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[600]),
    );
  }
}

Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
