import 'package:flutter/material.dart';

import '../constants/color.dart';

//todo notification Button
notificationButton(BuildContext context)=> InkWell(
  onTap: (){
   Navigator.pushNamed(context, "Notifications");
  },
  child:Stack(

    alignment: Alignment.topRight,

    children: [

      Container(

          margin: EdgeInsets.only(right: 7),

          child: Image.asset("images/notification.png",width: 25,height: 25,)),



      //todo text notification Number

      CircleAvatar(radius: 9,backgroundColor: colorYellow,child: Text(

        '4',

        style: TextStyle(

          fontFamily: 'Poppins',

          fontSize: 12,

          color: const Color(0xff182061),

          height: 1.8333333333333333,

        ),

        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),

        softWrap: false,

      ),)



    ],

  ),
);

// go to Chat Button
goToChat(BuildContext context)=>InkWell(
    onTap: (){
      Navigator.pushNamed(context, "Chat");
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Image.asset("images/Group 38389.png",height: 25,width: 25,),
    ));