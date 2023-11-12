import 'package:flutter/material.dart';

import '../../../../componnet/componnetAuth.dart';
class SupportAndSupport extends StatelessWidget {
  const SupportAndSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF3F4F6),
      body: Column(children: [
        Container(
          width: double.infinity,
          height:height*(110/height) ,
          child: Column(
            children: [
              SizedBox(height: 55,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("       "),
                  Text(
                    'الدعم والمساندة',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color(0xffffca34),
                      height: 0.8846153846153846,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  arrowBack(context: context)
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.955, -0.013),
              end: Alignment(0.881, 0.0),
              colors: [const Color(0xff182061), const Color(0xff16267d)],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        SizedBox(height: 20,),
        //todo Send Email Button
        InkWell(
          onTap: (){},
          child: Container(
            width:width*(338/width) ,
            height: height*(44/height),
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'إرسال بريد إلكتروني',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.email_rounded,color: Color(0xffF4B504),)
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
        SizedBox(height: 15,),
        //todo call fixo button
        InkWell(
          onTap: (){},
          child: Container(
            width:width*(338/width) ,
            height: height*(44/height),
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'التحدث مع فكسو',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.phone,color: Color(0xff28AF31),)
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
        SizedBox(height: 15,),
        // todo chat button
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "Chat");
          },
          child: Container(
            width:width*(338/width) ,
            height: height*(44/height),
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'محادثة فورية',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                SizedBox(width: 10,),
                Image.asset("images/Group 39158.png",width: 25,height: 25,)
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),

      ],),
    );
  }
}
