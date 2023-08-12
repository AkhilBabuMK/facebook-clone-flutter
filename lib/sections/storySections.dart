import 'package:facebook/Widgets/storyCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
            StoryCard(labelText: "Add to Story",avatar: dq,story:dq,createStatus:true,),
          StoryCard(labelText: "MohanLal",avatar: lal,story:lalStory,createStatus:false,),
          StoryCard(labelText: "Mamootty",avatar: mamooka,story:mamookaStory,createStatus:false,),
          StoryCard(labelText: "Strell",avatar: strell,story:strellStrory,createStatus:false,),
        ],
      ),
    );
  }
}
