import 'package:flutter/material.dart';

import '../../../../componnet/componnetAuth.dart';
class ShareAndEarnCredits extends StatelessWidget {
  const ShareAndEarnCredits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        width: width,
        height: height*(77/height),
        child: Center(child:
        Text(
          'دعوة أصدقائك',
          style: TextStyle(
            fontSize: 25,
            color: const Color(0xff182061),
            height: 0.5128205128205128,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        )
          ,),
        color: const Color(0xfff3ba35),
      ),
      backgroundColor: Color(0xffF3F4F6),
      body:
      Column(
        children: [
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
                  child: InkWell(
                      onTap: (){},
                      child: Image.asset("images/Group 38389.png",width: 25,height: 25,)),
                ),
                Text(
                  'شارك وإكسب رصيد',
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
        SizedBox(height: 40,),
        Image.asset("images/many.png",width: width*(150/width),height: height*(90/height),),
          SizedBox(height: 25,),

          Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xffcc9d1a),
            ),
            children: [
              TextSpan(
                text: 'إحصل علي رصيد ',
              ),
              TextSpan(
                text: '10',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: ' درهم مجاني',
              ),
            ],
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10,),
        Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xff182061),
              height: 1.2,
            ),
            children: [
              TextSpan(
                text: 'شارك التطبيق واعطي اصدقائك ',
              ),
              TextSpan(
                text: '20',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: ' درهم عند\nطلبهم لأي خدمة وستحصل علي رصيد ',
              ),
              TextSpan(
                text: '10',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextSpan(
                text: ' درهم\nبعد اكمالهم للطلب',
              ),
            ],
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10,),

        Container(color: Colors.grey,width: width*(300/width),height: .5,),
        SizedBox(height: 10,),
        Text(
          'إستخدم كود المشاركة الخاص بك',
          style: TextStyle(
            fontSize: 18,
            color: const Color(0xff182061),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10,),

        Container(
          width: width*(201/width),
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
               Image.asset("images/Icon feather-share.png",width: 20,height: 20,),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                  height: 22,
                  child:
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      showCursor: false,
                      decoration: InputDecoration(
                          hintText: "5847GQ54",

                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0)
                            ),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0)
                            ),
                          )

                      ),
                    ),
                  )),
            ))

          ],),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
          ),
        )


      ],),
    );
  }
}
