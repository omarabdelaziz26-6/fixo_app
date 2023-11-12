import 'package:flutter/material.dart';

import '../../componnet/componnetAuth.dart';

class Shopping_Cart extends StatelessWidget {
  const Shopping_Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return 
      SingleChildScrollView(
        child: Column(
        children: [
          Container(
            width: width,
            height: height * (108 / height),
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffF4B504),
                      child: Icon(
                        Icons.home_filled,
                        color: Color(0xff182061),
                      ),
                    ),
                    Text(
                      'عربة التسوق',
                      style: TextStyle(
                        fontSize: 18,
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
          SizedBox(
            height: 20,
          ),
          //

          buildContainer1(width, height),
          SizedBox(height: 10,),
          buildContainer2(width, height),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0,top: 5),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text(
                'لديك كود خصم؟',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff182061),
                  height: 1,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              SizedBox(width: 5,),
              Image.asset("images/discount (1).png",width: 15,height: 15,)
            ],),
          ),
          SizedBox(
            height: 10,
          ),
          // ادخل كوبون الخصم
          Container(
            margin: EdgeInsets.all(10),
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
          // order done button
          InkWell(
            onTap: (){},
            child: Container(
              width: width,
              height: height*(58/height),
              child: Center(
                child: Text(
                  'تأكيد الطلب',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffffffff),
                    height: 0.5357142857142857,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff182061), const Color(0xff16267d)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,)



        ],
    ),
      );
  }

  Widget buildContainer1(double width, double height) {
    return Container(
        width: width * (343 / width),
        padding: EdgeInsets.all(7),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: CircleAvatar(radius: 12,backgroundColor: Color(0xffF1F1F2),child: Icon(Icons.delete,size: 15,color: Colors.grey,),),
                ),

                Row(
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       // وصف المنتج
                       Text(
                         'بانيو ريما من لامار صنع\nفي السعودية - ابيض',
                         style: TextStyle(
                           fontSize: 15,
                           color: const Color(0xff182061),
                           height: 1.5,
                         ),
                         textHeightBehavior:
                         TextHeightBehavior(applyHeightToFirstAscent: false),
                         textAlign: TextAlign.right,
                         softWrap: false,
                       ),
                       // salary & currency
                       Row(
                         children: [
                           Text(
                             'درهم',
                             style: TextStyle(
                               fontSize: 12,
                               color: const Color(0xffcc9d1a),
                               height: 1,
                             ),
                             textHeightBehavior: TextHeightBehavior(
                                 applyHeightToFirstAscent: false),
                             textAlign: TextAlign.center,
                             softWrap: false,
                           ),
                           Text(
                             '200',
                             style: TextStyle(
                               fontSize: 12,
                               color: const Color(0xffcc9d1a),
                               height: 1,
                             ),
                             textHeightBehavior: TextHeightBehavior(
                                 applyHeightToFirstAscent: false),
                             textAlign: TextAlign.center,
                             softWrap: false,
                           ),
                         ],
                       )
                     ],
                   ),
                   SizedBox(width: 15,),
                   Image.asset(
                     "images/6234304_web2_prod_normal_2.png",
                     width: 100,
                     height: 100,
                   ),
                 ],
               )
              ],
            ),
            //todo counter
            Container(
              width: width,
              height: height*(35/height),
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
CircleAvatar(radius: 20,backgroundColor: Color(0xffF4B504),child: Center(child: Text("-",style: TextStyle(height: 1.1,fontSize: 25,color: Colors.white),)),),
                  Text(
                    '2',
                    style: TextStyle(
                      fontFamily: 'URWGeometricArabic ☞',
                      fontSize: 18,
                      color: const Color(0xff182061),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
         CircleAvatar(radius: 20,backgroundColor: Color(0xffF4B504),child: Text("+",style: TextStyle(height: 1.3,fontSize: 20,color: Colors.white),),),
              ],),
              decoration: BoxDecoration(
                color: const Color(0xffe0e1ea),
                borderRadius: BorderRadius.circular(21.0),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: width,
              height: height*(146/height),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                // todo Product price -
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '400',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'سعر المنتج -',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ],
                ),
                // todo Installation fee -
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'رسوم التركيب -',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ],
                ),
                // todo delivery fees
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'رسوم التوصيل -',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ],
                ),
                // todo total price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '600',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'المجموع الفرعي -',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )                    ],
                ),

              ],),
              decoration: BoxDecoration(
                color: const Color(0xffe0e1ea),
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            Text(
              '(شامل ضريبة القيمة المضافة)',
              style: TextStyle(
                fontSize: 10,
                color: const Color(0xff182061),
                height: 1.2777777777777777,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
        ),
      );
  }
  // بدون سعر لتركيب المنتج
  Widget buildContainer2(double width, double height) {
    return Container(
        width: width * (343 / width),
        padding: EdgeInsets.all(7),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: CircleAvatar(radius: 12,backgroundColor: Color(0xffF1F1F2),child: Icon(Icons.delete,size: 15,color: Colors.grey,),),
                ),

                Row(
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       // وصف المنتج
                       Text(

                         'غلاية كهربائية من الستانلس ستيل',
                         style: TextStyle(

                           fontSize: 15,

                           color: const Color(0xff182061),
                           height: 1.5,
                         ),
                         textHeightBehavior:
                         TextHeightBehavior(applyHeightToFirstAscent: false),
                         textAlign: TextAlign.right,
                         softWrap: false,
                         maxLines: 2,
                       ),
                       // salary & currency
                       Row(
                         children: [
                           Text(
                             'درهم',
                             style: TextStyle(
                               fontSize: 12,
                               color: const Color(0xffcc9d1a),
                               height: 1,
                             ),
                             textHeightBehavior: TextHeightBehavior(
                                 applyHeightToFirstAscent: false),
                             textAlign: TextAlign.center,
                             softWrap: false,
                           ),
                           Text(
                             '200',
                             style: TextStyle(
                               fontSize: 12,
                               color: const Color(0xffcc9d1a),
                               height: 1,
                             ),
                             textHeightBehavior: TextHeightBehavior(
                                 applyHeightToFirstAscent: false),
                             textAlign: TextAlign.center,
                             softWrap: false,
                           ),
                         ],
                       )
                     ],
                   ),
                   SizedBox(width: 15,),
                   Image.asset(
                     "images/1 (5).png",
                     width: 70,
                     height: 70,
                   ),
                 ],
               )
              ],
            ),
            SizedBox(height: 10,),
            //todo counter
            Container(
              width: width,
              height: height*(35/height),
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
CircleAvatar(radius: 20,backgroundColor: Color(0xffF4B504),child: Center(child: Text("-",style: TextStyle(height: 1.1,fontSize: 25,color: Colors.white),)),),
                  Text(
                    '2',
                    style: TextStyle(
                      fontFamily: 'URWGeometricArabic ☞',
                      fontSize: 18,
                      color: const Color(0xff182061),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
         CircleAvatar(radius: 20,backgroundColor: Color(0xffF4B504),child: Text("+",style: TextStyle(height: 1.3,fontSize: 20,color: Colors.white),),),
              ],),
              decoration: BoxDecoration(
                color: const Color(0xffe0e1ea),
                borderRadius: BorderRadius.circular(21.0),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: width,
              height: height*(146/height),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                // todo Product price -
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '400',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'سعر المنتج -',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ],
                ),
                
                // todo delivery fees
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'رسوم التوصيل -',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ],
                ),
                // todo total price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 4,),
                        Text(
                          '600',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Text(
                      'المجموع الفرعي -',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                        height: 1.608695652173913,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )                    ],
                ),

              ],),
              decoration: BoxDecoration(
                color: const Color(0xffe0e1ea),
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            Text(
              '(شامل ضريبة القيمة المضافة)',
              style: TextStyle(
                fontSize: 10,
                color: const Color(0xff182061),
                height: 1.2777777777777777,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
        ),
      );
  }
}
