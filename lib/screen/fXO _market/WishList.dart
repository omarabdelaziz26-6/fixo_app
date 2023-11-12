import 'package:flutter/material.dart';

import '../../componnet/componnetAuth.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
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
                      'قائمة الأمنيات',
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
          GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 10),
            physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true,
childAspectRatio: .7,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,children: [
            Container(
              width: width*(149/width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF1F1F2),
                        child: Icon(Icons.favorite,color: Color(0xffCC9D1A),),
                      )),
                  Image.asset("images/6234304_web2_prod_normal_2.png"),
                  Text(

                    'بانيو ريما من لامار صنع\nفي السعودية - ابيض',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff182061),
                      height: 1.4,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Discount
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff737895),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '300',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xff737895),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),

                        // salary & currency
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xffe8333a),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '200',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xffe8333a),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
              ),
            ),
            Container(
              width: width*(149/width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF1F1F2),
                        child: Icon(Icons.favorite,color: Color(0xffCC9D1A),),
                      )),
                  Image.asset("images/6234304_web2_prod_normal_2.png"),
                  Text(

                    'بانيو ريما من لامار صنع\nفي السعودية - ابيض',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff182061),
                      height: 1.4,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Discount
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff737895),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '300',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xff737895),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),

                        // salary & currency
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xffe8333a),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '200',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xffe8333a),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
              ),
            ),
            Container(
              width: width*(149/width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF1F1F2),
                        child: Icon(Icons.favorite,color: Color(0xffCC9D1A),),
                      )),
                  Image.asset("images/6234304_web2_prod_normal_2.png"),
                  Text(

                    'بانيو ريما من لامار صنع\nفي السعودية - ابيض',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff182061),
                      height: 1.4,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Discount
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff737895),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '300',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xff737895),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),

                        // salary & currency
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xffe8333a),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '200',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xffe8333a),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
              ),
            ),
            Container(
              width: width*(149/width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF1F1F2),
                        child: Icon(Icons.favorite,color: Color(0xffCC9D1A),),
                      )),
                  Image.asset("images/6234304_web2_prod_normal_2.png"),
                  Text(

                    'بانيو ريما من لامار صنع\nفي السعودية - ابيض',
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xff182061),
                      height: 1.4,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                    softWrap: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Discount
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff737895),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '300',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xff737895),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),

                        // salary & currency
                        Row(
                          children: [
                            Text(
                              'درهم',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xffe8333a),
                                height: 1.4285714285714286,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '200',
                              style: TextStyle(
                                fontFamily: 'abuhijlahlight',
                                fontSize: 12,
                                color: const Color(0xffe8333a),
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
              ),
            ),

          ],),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}
