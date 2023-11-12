import 'package:flutter/material.dart';
import 'package:santos/componnet/componnent.dart';
import 'package:santos/componnet/componnetAuth.dart';
class When_a_technician_is_hired_screen extends StatelessWidget {
   When_a_technician_is_hired_screen ({Key? key}) : super(key: key);
   @override
   Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height*(90/height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10),child:goToChat(context) ,),
                     Row(children: [
                       // todo number of order
                       Text(
                         '89858695',
                         style: TextStyle(
                           fontSize: 18,
                           color: const Color(0xffffca34),
                           height: .1,
                         ),
                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                         textAlign: TextAlign.center,
                         softWrap: false,
                       ),
                       SizedBox(width: 2,),
                       Text(
                         ': رقم الطلب',
                         style: TextStyle(
                           fontSize: 18,
                           color: const Color(0xffffca34),
                           height: 0.9583333333333334,
                         ),
                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                         textAlign: TextAlign.center,
                         softWrap: false,
                       ),
                     ],),

                  arrowBack(context: context)
                ],)
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
              margin: EdgeInsets.all(15),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'الطلب',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Text(
                    'السباكة - حمام - تصليح حنفية',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1.0952380952380953,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // todo text of the currency
                      Text(
                        'درهم',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xffe8333a),
                          height: 1,
                        ),
                        textHeightBehavior: TextHeightBehavior(
                            applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      // todo text of salary
                      Text(
                        '70',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xffe8333a),
                          height: 1.4375,
                        ),
                        textHeightBehavior: TextHeightBehavior(
                            applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),

                    ],
                  ),
                  Text(
                    'وصف المشكلة : لوريم ايبسوم هو نموذج افتراضي يوضع في\nالتصاميم لتعرض على العميل ليتصور طريقه وضع النصوص',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1.5,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                        Image.asset("images/Mask Group 26.png",width: width*(67/width),height: width*(67/width),),
                        Container(
                          width: width*(67/width),
                          height: width*(67/width),
                          decoration: BoxDecoration(
                            color:  Color(0x70182061),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        Icon(Icons.zoom_in_outlined,color: Colors.white,size: 40,)

                      ],),
                      SizedBox(width: 10,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                        Image.asset("images/Mask Group 26.png",width: width*(67/width),height: width*(67/width),),
                        Container(
                          width: width*(67/width),
                          height: width*(67/width),
                          decoration: BoxDecoration(
                            color:  Color(0x70182061),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                        ),
                        Icon(Icons.zoom_in_outlined,color: Colors.white,size: 40,)

                      ],),
                    ],
                  )

                ],
              ),
            ),
            Divider(height: 2,color: Colors.grey,),
            Container(
              width: width,
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'الادوات الاضافية',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Text(
                    'شينيور',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1.0454545454545454,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  Text(
                    'معدات اخرى',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Text(
                    'سلم',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1.0454545454545454,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),

                ],
              ),
            ),
            Divider(height: 2,color: Colors.grey,),
            Container(
              width: width,
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                        onTap: (){},
                        child: Text(
                          'تعديل الطلب',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff28af31),
                            height: 1.0454545454545454,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Text(
                        'التاريخ والوقت',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xff182061),
                          height: 1,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'الاثنين 8 فبراير',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1.0454545454545454,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                        onTap: (){},
                        child: Text(
                          'إلغاء الطلب',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xffcc9d1a),
                            height: 1.0454545454545454,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff28af31),
                            height: 1,
                          ),
                          children: [
                            TextSpan(
                              text: 'وقت الوصول ',
                            ),
                            TextSpan(
                              text: '07',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: ':',
                            ),
                            TextSpan(
                              text: '00',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: ' م - ',
                            ),
                            TextSpan(
                              text: '08',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: ':',
                            ),
                            TextSpan(
                              text: '00',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: ' م',
                            ),
                          ],
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      )                  ],
                  ),


                ],
              ),
            ),
            Divider(height: 2,color: Colors.grey,),
            Container(
              width: width,
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'العنوان',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Text(
                    'ميدان سفينكس , المعادي , القاهرة , مصر',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Text(
                    'مبنى رقم 2 - الدور الاول - شقة رقم 11 ',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff737895),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),



                ],
              ),
            ),
            Divider(height: 2,color: Colors.grey,),
            Container(
              width: width,
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'معلومات الفني',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: width,
                    height: height*(40/height),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'التفاصيل ستظهر هنا عندما يتم تعيين فني',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 2,),
                        Icon(
                          Icons.watch_later,
                          color: Color(0xff182061),
                        )
                      ],
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0x1a182061),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  )




                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
