/* 'package:facebook/Widgets/avatarImg.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
class FooterDetails extends StatelessWidget {
   String like;
   String comment;
   String shares;
  FooterDetails({required this.like,this.comment="",this.shares=""});


  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.only(top:3),
      height: 30,
     
      child: Row(
        children: [
          IconButton(onPressed:(){
          }, icon: Icon(Icons.thumb_up,size: 20,),color: Colors.blue,padding: EdgeInsets.only(top: 0),),
         displayText(label:like),
          SizedBox(width: 60,),
          displayText(label: comment),
          SizedBox(width: 10,),
          displayText(label: shares),
          SizedBox(width: 10,),
          Container(
            width: 25,
            height:25,
            child:
             Avatar(displayImage: lal, displayStatus: false,),),
          SizedBox(width: 3,),
          Icon(Icons.arrow_drop_down,color: Colors.grey[600]),
        ],
      ),
    );


  }

  Widget displayText({required String label})
  {
      return Text(label==null ?"":label,style: TextStyle(color: Colors.grey[600]),);

  }


}
*/

