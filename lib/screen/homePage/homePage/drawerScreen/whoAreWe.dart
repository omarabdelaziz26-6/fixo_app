import 'package:flutter/material.dart';
import 'package:santos/componnet/componnetAuth.dart';


import '../../../../componnet/componnent.dart';
class WhoAreWe extends StatelessWidget {
  const WhoAreWe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF3F4F6),
      body: Column(
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
                        child:goToChat(context)),
                  ),
                  Text(
                    'من نحن',
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
          Container(
            width: width*(338/width),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائيا بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام الاربعون قبل الميلاد. من كتاب "حول أقاصي الخير والشر',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff182061),
                    height: 1.1578947368421053,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                Text(
                  'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff182061),
                    height: 1.1578947368421053,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                Text(
                  'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff182061),
                    height: 1.1578947368421053,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 25,)
              ],),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'يمكنك متابعتنا على',
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xff182061),
              height: 1,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.right,
            softWrap: false,
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("images/Group 38474.png"),
          )

        ],),
    );
  }
}
