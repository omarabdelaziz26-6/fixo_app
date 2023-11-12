import 'package:flutter/material.dart';
import 'package:santos/componnet/componnent.dart';

import '../../../../componnet/componnetAuth.dart';
class UserAgreement extends StatelessWidget {
  const UserAgreement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: height*(110/height),
          child: Column(children: [
            SizedBox(height: 55,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child:goToChat(context),
                ),
                Text(
                  'اتفاقية المستخدم',
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
            )
          ],),
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

        InkWell(
          onTap: (){
            Navigator.pushNamed(context, "PrivacyPolicy");
          },
          child: Container(
            width: width*(338/width),
            height: height*(44/height),
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'سياسة الخصوصية',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                    height: 1,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 10,),
                Image.asset("images/Icon_doc.png",width: 25,height: 25,),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
        SizedBox(height: 10,),

        Container(
          width: width*(338/width),
          height: height*(44/height),
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الشروط والاحكام',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xff182061),
                  height: 1,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 10,),
              Image.asset("images/Component 1 – 1.png",width: 25,height: 25,),
            ],
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        ),
        SizedBox(height: 10,),

        Container(
          width: width*(338/width),
          height: height*(44/height),
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'سياسة الضمان لسوق فكسو',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xff182061),
                  height: 1,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 10,),
              Image.asset("images/layers.png",width: 25,height: 25,),
            ],
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        ),

      ],),
    );
  }
}
