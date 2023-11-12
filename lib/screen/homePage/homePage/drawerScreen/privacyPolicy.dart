import 'package:flutter/material.dart';

import '../../../../componnet/componnent.dart';
import '../../../../componnet/componnetAuth.dart';
class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
                  child:goToChat(context),
                ),
                Text(
                  'سياسة الخصوصية',
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
          Container(
            width: width,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Text(
                  'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                    height: 1.0476190476190477,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 10,),

                Text(
                  'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                    height: 1.0476190476190477,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 20,),
                Text(
                  'ما البيانات التي يحتجها التطبيق',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffcc9d1a),
                    height: 0.92,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10,),

                Text(
                  'وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائيا بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام الاربعون قبل الميلاد. من كتاب "حول أقاصي الخير والشر',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                    height: 1.0476190476190477,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 10,),

                Text(
                  'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                    height: 1.0476190476190477,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          )


      ],),
    );
  }
}
