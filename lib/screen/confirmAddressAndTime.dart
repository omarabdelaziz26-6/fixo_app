import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:santos/componnet/componnent.dart';
import '../componnet/componnetAuth.dart';
class ConfirmAddressAndTime extends StatelessWidget {
  const ConfirmAddressAndTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: height*(85/height),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "");
                  },
                  child: Container(
                    width: width*(143/width),
                    height: height*(43/height),
                    child: Center(
                      child: Text(
                        'تنفيذ الطلب',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.718, 0.0),
                        end: Alignment(0.577, 0.0),
                        colors: [const Color(0xff182061), const Color(0xff16267d)],
                        stops: [0.0, 1.0],
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '(شامل ضريبة القيمة المضافة)',
                          style: TextStyle(
                              fontSize: 9,
                              color: const Color(0xff1d2226),
                              height: 3
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'سعر الخدمة',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xff182061),
                            height: 0.92,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ImageIcon(AssetImage("images/Icon ionic-md-information-circle-outline.png"),size: 15,),
                        SizedBox(width: 5,),
                        Text(
                          'السعر بعد المعاينة',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xff1d2226),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'السباكة : اقل سعر 30 درهم',
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xff8b6f19),
                        height: 1.0952380952380953,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )
                  ],),

              ],
            )
          ],),
        decoration: BoxDecoration(
          color: const Color(0xfff3ba35),
          boxShadow: [
            BoxShadow(
              color: const Color(0x0f000000),
              offset: Offset(0, -4),
              blurRadius: 23,
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * (110 / height),
              child: Column(
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      goToChat(context),
                      Text(
                        'تأكيد العنوان والوقت',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xffffca34),
                          height: 0.8846153846153846,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      arrowBack(context: context)
                    ],
                  )
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

            Container(
              width: width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  // Map Of Google

                  Container(
                    width: width,
                    height: height * (100 / height),
                    child: Image.asset("images/9af21693a89d2634d63f6edb6a996e46.png",fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                      border:
                          Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                    ),
                  ),
                  // address Details
                  Container(
                    width: width,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'تغيير',
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color(0xfffcb70a),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          Row(children: [
                            Text(
                              'المنزل',
                              style: TextStyle(
                                fontSize: 18,
                                color: const Color(0xff182061),
                                height: 0.92,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 5,),
                            Image.asset("images/map pin.png",width: 25,height: 20,),
                          ],),
                        ],),
                        Text(
                          'ميدان سفينكس , المعادي , القاهرة , مصر',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xff737895),
                            height: 1,
                          ),
                          textHeightBehavior:
                              TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'مبنى رقم 2 - الدور الاول - شقة رقم 11',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xff737895),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                      border:
                          Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'نأسف لايتوفر هذا العرض في هذا النطاق',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xffcc9d1a),
                      height: 0.9523809523809523,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  SizedBox(height: 15,),
                  // todo chose time
                  Container(
                    width: width,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: ()async{
                             showModalBottomSheet(context: context, builder: (_){
                               return Container(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 8.0),
                                       child: Text(
                                         'حدد وقت الوصول',
                                         style: TextStyle(
                                           fontSize: 20,
                                           color: const Color(0xff182061),
                                         ),
                                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                         textAlign: TextAlign.center,
                                         softWrap: false,
                                       ),
                                     ),

                                     Padding(
                                       padding: const EdgeInsets.only(bottom: 8.0,top: 8),
                                       child: Text(
                                         'Fri, 12 Feb',
                                         style: TextStyle(
                                           fontSize: 12,
                                           color: const Color(0xff737895),
                                           fontWeight: FontWeight.w600,
                                         ),
                                         textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                         textAlign: TextAlign.center,
                                         softWrap: false,
                                       ),
                                     ),

                                     Text(
                                       '12:35 PM - 01:35 PM',
                                       style: TextStyle(
                                         fontSize: 15,
                                         color: const Color(0xff737895),
                                         fontWeight: FontWeight.w600,
                                       ),
                                       textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                       textAlign: TextAlign.center,
                                       softWrap: false,
                                     ),
                                     Expanded(
                                       child: CupertinoDatePicker(

                                         mode: CupertinoDatePickerMode.dateAndTime,
                                         onDateTimeChanged: (value) {

                                         },
                                         initialDateTime: DateTime.now(),

                                       ),
                                     ),
                                     Row(
                                       children: [
                                         Expanded(
                                           child: Container(

                                             color: const Color(0xfff1f1f2),
                                             height: 48,
                                             child: Center(
                                               child: Text(
                                                 'إلغاء',
                                                 style: TextStyle(
                                                   fontSize: 15,
                                                   color: const Color(0xff182061),
                                                 ),
                                                 textAlign: TextAlign.center,
                                                 softWrap: false,
                                               ),
                                             ),
                                           ),
                                         ),

                                         Expanded(
                                           child: InkWell(

                                             child: Container(

                                               decoration: BoxDecoration(
                                                 gradient: LinearGradient(
                                                   begin: Alignment(-0.613, 0.0),
                                                   end: Alignment(0.58, 0.25),
                                                   colors: [const Color(0xff182061), const Color(0xff16267d)],
                                                   stops: [0.0, 1.0],
                                                 ),
                                               ),
                                               height: 48,
                                               child: Center(
                                                 child: Text(
                                                   'تأكيد',
                                                   style: TextStyle(
                                                     fontSize: 15,
                                                     color: const Color(0xffffffff),
                                                   ),
                                                   textAlign: TextAlign.center,
                                                   softWrap: false,
                                                 ),
                                               ),
                                             ),
                                             onTap: (){
                                               timer_bottomSheet(context, height, width);
                                             },
                                           ),
                                         ),

                                       ],
                                     )
                                   ],
                                 ),
                               );
                             });

                            },
                            child: Image.asset("images/Group 38374.png",width: width*(100/width),height: 30,)),
                        Row(children: [
                          Text(
                            'الوقت',
                            style: TextStyle(
                              fontSize: 17,
                              color: const Color(0xff36393b),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 5,),
                          Image.asset("images/Icon ionic-ios-time.png",width: 25,height: 20,),
                        ],),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'لديك كود خصم؟',
                        style: TextStyle(
                          fontSize: 17,
                          color: const Color(0xff182061),
                          height: 1,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(width: 5,),
                      Image.asset("images/discount (1).png",width: 25,height: 25,),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Container(
                    width: width,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffF4B504),
                          child: Icon(Icons.done,color: Colors.white,),
                         ),
                         
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
                                hintText: "كود الخصم",

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
                      borderRadius: BorderRadius.circular(21.0),
                      border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
                    ),
                  ),
                  SizedBox(height: 15,),

                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 13,
                        color: const Color(0xffcc9d1a),
                        height: 0.9523809523809523,
                      ),
                      children: [
                        TextSpan(
                          text: 'لديك كوبون خصم بنسبة ',
                        ),
                        TextSpan(
                          text: '30',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: '%من الخدمات الاساسية',
                        ),
                      ],
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  )

                ],
              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
  your_reservation_date_has_been_confirmed(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: true,
        useRootNavigator: true,
        isScrollControlled: true,         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.0),
        topRight: Radius.circular(15.0),
      ),
    ),
        context: context,
        builder: (_) {
          return Container(
            height: 500,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'تم تأكيد موعد حجز طلبك',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff182061),
                    height: 1,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
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
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xffcc9d1a),
                          height: 1,
                        ),
                        children: [
                          TextSpan(
                            text: 'يوم الجمعة ',
                          ),
                          TextSpan(
                            text: '15',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: ' فبراير',
                          ),
                        ],
                      ),
                    ),


                  ],),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تعديل الطلب',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff28af31),
                        height: 1.0454545454545454,
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
                            text: '12',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: ':',
                          ),
                          TextSpan(
                            text: '35',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: ' م - ',
                          ),
                          TextSpan(
                            text: '01',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: ':',
                          ),
                          TextSpan(
                            text: '35',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: ' م',
                          ),
                        ],
                      ),

                    )

                  ],),
                SizedBox(height: 5,),

                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'التفاصيل ستظهر هنا عندما يتم تعيين فني',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff182061),
                          height: 0.92,
                        ),

                      ),
                      Image.asset("images/electrician.png",width: 40,height: 40,),

                    ],),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'المنزل',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff182061),
                              height: 0.92,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          Icon(Icons.location_on,color: Color(0xffFFCA34),)
                        ],),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          'ميدان سفينكس , المعادي , القاهرة , مصر',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff737895),
                            height: 0,
                          ),

                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          'مبنى رقم 2 - الدور الاول - شقة رقم 11',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff737895),
                            height: 0,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      )

                    ],),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'الطلب',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff182061),
                              height: 0.92,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          Image.asset("images/Icon_doc.png",width: 20,height: 20,)

                        ],),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '89858695',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff737895),
                              height: 0,
                            ),

                          ),
                          Text(
                            ': رقم الطلب',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff737895),
                              height: 0,
                            ),

                          ),
                        ],
                      ),

                      Text(
                        'السباكة - حمام',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff737895),
                          height: 0,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'درهم',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xffe8333a),
                              height: 1,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '70',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,

                              fontSize: 15,
                              color: const Color(0xffe8333a),
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),


                    ],),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  width: double.infinity,
                  height: 43,
                  child: Center(
                    child: Text(
                      'الرئيسية',
                      style: TextStyle(
                        fontSize: 25,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.718, 0.0),
                      end: Alignment(0.577, 0.0),
                      colors: [const Color(0xff182061), const Color(0xff16267d)],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                )

              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
          );
        });
  }
  timer_bottomSheet(BuildContext context, double height, double width) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder: (_){
      return Container(
        height: height*(480/height),
        child: Column(children: [
          LinearPercentIndicatorWidget(width, height),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "");
                        },
                        child: Text(
                          'إلغاء الطلب',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xffcc9d1a),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        'تم قبول طلبك',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff182061),
                          height: 0.7666666666666667,
                        ),
                      ),
                    ],),
                  Container(
                    width: double.infinity,

                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "images/Icon ionic-ios-call.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "images/c.png",
                                width: 20,
                                height: 20,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'خالد محمود',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: const Color(0xff182061),
                                      height: 0.9583333333333334,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: const Color(0xff303b7d),
                                        height: 1.0476190476190477,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'الطلبات المنفذة : ',
                                        ),
                                        TextSpan(
                                          text: '19',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' طلب',
                                        ),
                                      ],
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: const Color(0xff303b7d),
                                        height: 1.0476190476190477,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'على بعد : ',
                                        ),
                                        TextSpan(
                                          text: '20',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ك',
                                        ),
                                      ],
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: const Color(0xfffcb70a),
                                          fontWeight: FontWeight.w500,
                                          height: 1.6428571428571428,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Color(0xffFCB70A),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffFFCA34),
                              )
                            ],
                          ),
                        ],
                      ),

                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'المنزل',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff182061),
                                height: 0.92,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            Icon(Icons.location_on,color: Color(0xffFFCA34),)
                          ],),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Text(
                            'ميدان سفينكس , المعادي , القاهرة , مصر',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff737895),
                              height: 1,
                            ),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Text(
                            'مبنى رقم 2 - الدور الاول - شقة رقم 11',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff737895),
                              height: 1,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        )

                      ],),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'الطلب',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff182061),
                                height: 0.92,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            Image.asset("images/Icon_doc.png",width: 20,height: 20,)

                          ],),
                        SizedBox(height: 8,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '89858695',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff737895),
                                height: 1,
                              ),

                            ),
                            Text(
                              ': رقم الطلب',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff737895),
                                height: 1,
                              ),

                            ),
                          ],
                        ),

                        Text(
                          'السباكة - حمام',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff737895),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xffe8333a),
                                height: 1,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '70',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,

                                fontSize: 15,
                                color: const Color(0xffe8333a),
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),


                      ],),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 43,
                    child: Center(
                      child: Text(
                        'الرئيسية',
                        style: TextStyle(
                          fontSize: 25,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.718, 0.0),
                        end: Alignment(0.577, 0.0),
                        colors: [const Color(0xff182061), const Color(0xff16267d)],
                        stops: [0.0, 1.0],
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  )

                ],),),
          )


        ],),
      );
    });
  }
  LinearPercentIndicatorWidget(double width, double height) {
    return Container(
      width: width,
      height: height*(60/height),
      child:  new LinearPercentIndicator(
        isRTL:true,
        padding: EdgeInsets.all(0),
        width: width,
        animateFromLastPercent: true,
        animation: true,
        lineHeight:60,
        animationDuration: 55000,
        percent: 1.0,
        center: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'دقيقة',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff182061),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(width: 1,),
            Text(
              '60',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff182061),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(width: 1,),

            Text(
              'وقت الوصول خلال',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff182061),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ],
        ),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Color(0xfffcd26c),
      ),);
  }
  ServiceFeeShowBottomSheet(BuildContext context, double height, double width) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )),
        isScrollControlled: true,
        context: context, builder: (_){
      return Container(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10,),
            Image.asset("images/logofixo3.png",width: 100,height: 100,),
            SizedBox(height: 6,),
            Text(
              'رسوم التأكيد',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff182061),
                height: 0.92,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'درهم',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xffe8333a),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 3,),
                Text(
                  '70',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xffe8333a),
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],),
            SizedBox(height: 6,),
            Text(
              ' سيتم إحتساب رسوم التأكيد كجزء من مبلغ الخدمة عند إعتمادك للخدمة ',
              style: TextStyle(
                fontSize: 13,
                color: const Color(0xffe8333a),
                height: 0.8181818181818182,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(height: 6,),
            Row(children: [
              Expanded(
                child: Container(
                  height: height*(48/height),
                  child:
                  Center(
                    child: Text(
                      'الدفع من المحفظة',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.7, 0.0),
                      end: Alignment(0.594, 0.134),
                      colors: [const Color(0xfff4b504), const Color(0xffffd04d)],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: height*(48/height),
                  child:
                  Center(
                    child:   Text(
                      'الدفع من البطاقة',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.613, 0.0),
                      end: Alignment(0.58, 0.25),
                      colors: [const Color(0xff182061), const Color(0xff16267d)],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              )
            ],)

          ],),
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      );
    });
  }

}
