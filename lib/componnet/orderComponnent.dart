import 'package:flutter/material.dart';
import 'package:santos/constants/strings.dart';

Widget you_have_the_technician({
  required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required String technicianName,
  required int salary,
  required int distance,
  required double rate,
  String? how_many_requests,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          '$dateAndTime',
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),

        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "you_have_the_technician");
          },
          child: Container(
            width: width * (329 / width),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(""),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // todo row of order number
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //todo text order number
                              Text(
                                '$orderNumber',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff737895),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6428571428571428,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                ': رقم الطلب',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff737895),
                                  height: 1.0454545454545454,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // todo ...نوع الطلب سباكه او نجار
                          Text(
                            orderType,
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff737895),
                              height: 1.0952380952380953,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // todo text of the currency
                              Text(
                                currency,
                                style: TextStyle(
                                  fontSize: 18,
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
                                "$salary",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color(0xffe8333a),
                                  height: 1.4375,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: height * (32 / height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'الفني عندك',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff182061),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/Icon awesome-user-cog.png",
                        width: 30,
                        height: 30,
                      )
                    ],
                  ),
                  color: const Color(0x13182061),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/Icon ionic-ios-call.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "images/c.png",
                            width: 25,
                            height: 25,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                technicianName,
                                style: TextStyle(
                                  fontSize: 18,
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
                                    fontSize: 18,
                                    color: const Color(0xff303b7d),
                                    height: 1.0476190476190477,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'الطلبات المنفذة : ',
                                    ),
                                    TextSpan(
                                      text: how_many_requests,
                                      style: TextStyle(
                                        fontSize: 18,
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
                                    fontSize: 18,
                                    color: const Color(0xff303b7d),
                                    height: 1.0476190476190477,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'على بعد : ',
                                    ),
                                    TextSpan(
                                      text: '$distance',
                                      style: TextStyle(
                                        fontSize: 18,
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
                                    '$rate',
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
                            radius: 35,
                            backgroundColor: Color(0xffFFCA34),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'إلغاء الطلب',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xffcc9d1a),
                    height: 1.15,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget tech_is_on_the_way({
  required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required String technicianName,
  required int salary,
  required int time,
  required int distance,
  required double rate,
  String? how_many_requests,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          dateAndTime,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "Tech_is_on_the_way");
          },
          child: Container(
            width: width * (329 / width),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * (55 / width),
                        height: width * (55 / width),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$time',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff68551a),
                              ),
                            ),
                            Text(
                              'دقيقة',
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xff68551a),
                              ),
                            )
                          ],
                        ),
                        color: const Color(0xfff3ba35),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // todo row of order number
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //todo text order number
                              Text(
                                '$orderNumber',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff737895),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6428571428571428,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                ': رقم الطلب',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff737895),
                                  height: 1.0454545454545454,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // todo ...نوع الطلب سباكه او نجار
                          Text(
                            orderType,
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff737895),
                              height: 1.0952380952380953,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // todo text of the currency
                              Text(
                                currency,
                                style: TextStyle(
                                  fontSize: 18,
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
                                '$salary',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color(0xffe8333a),
                                  height: 1.4375,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: height * (32 / height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'الفني في الطريق',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xffCC9D1A),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/fast-delivery.png",
                        width: 30,
                        height: 30,
                      )
                    ],
                  ),
                  color: const Color(0xffF4ECDA),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/Icon ionic-ios-call.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "images/c.png",
                            width: 25,
                            height: 25,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                technicianName,
                                style: TextStyle(
                                  fontSize: 18,
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
                                    fontSize: 18,
                                    color: const Color(0xff303b7d),
                                    height: 1.0476190476190477,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'الطلبات المنفذة : ',
                                    ),
                                    TextSpan(
                                      text: '$how_many_requests',
                                      style: TextStyle(
                                        fontSize: 18,
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
                                    fontSize: 18,
                                    color: const Color(0xff303b7d),
                                    height: 1.0476190476190477,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'على بعد : ',
                                    ),
                                    TextSpan(
                                      text: '$distance',
                                      style: TextStyle(
                                        fontSize: 18,
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
                                    '$rate',
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
                            radius: 35,
                            backgroundColor: Color(0xffFFCA34),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'إلغاء الطلب',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xffcc9d1a),
                    height: 1.15,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Your_request_has_been_accepted({
  required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required String technicianName,
  required int salary,
  required int time,
  required int distance,
  required double rate,
  int? how_many_requests,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          dateAndTime,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "Your_request_has_been_accepted");
          },
          child: Container(
            width: width * (329 / width),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width * (55 / width),
                        height: width * (55 / width),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$time',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff68551a),
                              ),
                            ),
                            Text(
                              'دقيقة',
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xff68551a),
                              ),
                            )
                          ],
                        ),
                        color: const Color(0xfff3ba35),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // todo row of order number
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //todo text order number
                              Text(
                                orderNumber,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff737895),
                                  fontWeight: FontWeight.w500,
                                  height: 1.6428571428571428,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                ': رقم الطلب',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff737895),
                                  height: 1.0454545454545454,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // todo ...نوع الطلب سباكه او نجار
                          Text(
                            orderType,
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff737895),
                              height: 1.0952380952380953,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // todo text of the currency
                              Text(
                                currency,
                                style: TextStyle(
                                  fontSize: 18,
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
                                '$salary',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color(0xffe8333a),
                                  height: 1.4375,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: height * (32 / height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تم قبول طلبك',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff28af31),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/Group 38414.png",
                        width: 20,
                        height: 20,
                      )
                    ],
                  ),
                  color: const Color(0xffd6ebda),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "images/Icon ionic-ios-call.png",
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            "images/c.png",
                            width: 25,
                            height: 25,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                technicianName,
                                style: TextStyle(
                                  fontSize: 18,
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
                                    fontSize: 18,
                                    color: const Color(0xff303b7d),
                                    height: 1.0476190476190477,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'الطلبات المنفذة : ',
                                    ),
                                    TextSpan(
                                      text: '5',
                                      style: TextStyle(
                                        fontSize: 18,
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
                                    fontSize: 18,
                                    color: const Color(0xff303b7d),
                                    height: 1.0476190476190477,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'على بعد : ',
                                    ),
                                    TextSpan(
                                      text: '$distance',
                                      style: TextStyle(
                                        fontSize: 18,
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
                                    '$rate',
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
                            radius: 35,
                            backgroundColor: Color(0xffFFCA34),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'إلغاء الطلب',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xffcc9d1a),
                    height: 1.15,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget details_will_appear_here_when_a_technician_is_hired_cancel_order({
  required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required int salary,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          dateAndTime,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        Container(
          width: width * (329 / width),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // todo row of order number
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //todo text order number
                        Text(
                          orderNumber,
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff737895),
                            fontWeight: FontWeight.w500,
                            height: 1.6428571428571428,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          ': رقم الطلب',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xff737895),
                            height: 1.0454545454545454,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // todo ...نوع الطلب سباكه او نجار
                    Text(
                      orderType,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff737895),
                        height: 1.0952380952380953,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // todo text of the currency
                        Text(
                          currency,
                          style: TextStyle(
                            fontSize: 18,
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
                          '$salary',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xffe8333a),
                            height: 1.4375,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: height * (35 / height),
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
                    Icon(
                      Icons.watch_later,
                      color: Color(0xff182061),
                    )
                  ],
                ),
                color: const Color(0xffe0e1ea),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Center(
                          child: Text(
                        'إلغاء الطلب',
                        style: TextStyle(
                          fontSize: 17,
                          color: const Color(0xffcc9d1a),
                          height: 1.15,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        ),
      ],
    ),
  );
}

Widget details_will_appear_here_when_a_technician_is_hired({
  required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required int salary,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          dateAndTime,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "When_a_technician_is_hired_screen");
          },
          child: Container(
            width: width * (329 / width),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // todo row of order number
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //todo text order number
                          Text(
                            orderNumber,
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff737895),
                              fontWeight: FontWeight.w500,
                              height: 1.6428571428571428,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            ': رقم الطلب',
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff737895),
                              height: 1.0454545454545454,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // todo ...نوع الطلب سباكه او نجار
                      Text(
                        orderType,
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff737895),
                          height: 1.0952380952380953,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // todo text of the currency
                          Text(
                            currency,
                            style: TextStyle(
                              fontSize: 18,
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
                            '$salary',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xffe8333a),
                              height: 1.4375,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: height * (35 / height),
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
                      Icon(
                        Icons.watch_later,
                        color: Color(0xff182061),
                      )
                    ],
                  ),
                  color: const Color(0xffe0e1ea),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                            child: Text(
                          'إلغاء الطلب',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xffcc9d1a),
                            height: 1.15,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )),
                      ),
                    ),
                    // just divider

                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                            child: Text(
                          'تعديل الطلب',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xff28af31),
                            height: 1.15,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget there_is_no_technician_available({
  required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required int salary,
}) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          dateAndTime,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        Container(
          width: width * (329 / width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // todo row of order number
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //todo text order number
                        Text(
                          orderNumber,
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff737895),
                            fontWeight: FontWeight.w500,
                            height: 1.6428571428571428,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          ': رقم الطلب',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xff737895),
                            height: 1.0454545454545454,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // todo ...نوع الطلب سباكه او نجار
                    Text(
                      orderType,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff737895),
                        height: 1.0952380952380953,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // todo text of the currency
                        Text(
                          currency,
                          style: TextStyle(
                            fontSize: 18,
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
                          '$salary',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xffe8333a),
                            height: 1.4375,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: height * (35 / height),
                child: Center(
                  child: Text(
                    'لايوجد فني متاح',
                    style: TextStyle(
                      fontSize: 17,
                      color: const Color(0xff182061),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                color: const Color(0xffe0e1ea),
              ),
              SizedBox(
                height: height * (15 / height),
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Center(
                            child: Text(
                          'خروج',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xffe8333a),
                            height: 1.15,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )),
                      ),
                    ),
                  ),
                  // just divider

                  Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                          child: Text(
                        'طلب مساعدة',
                        style: TextStyle(
                          fontSize: 17,
                          color: const Color(0xff182061),
                          height: 1.15,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  // just divider
                  Container(
                    width: 1,
                    height: 30,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          'إعادة المحاولة',
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xffcc9d1a),
                            height: 1.15,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * (15 / height),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        ),
      ],
    ),
  );
}

Widget service_has_expired(

{ required BuildContext context,
  required double width,
  required double height,
  required String dateAndTime,
  required String orderNumber,
  required String orderType,
  required String technicianName,
  required int salary,
  required int distance,
  required double rate,
  int? how_many_requests,
}
    ) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, "Service_has_expired");
    },
    child: Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // text date of order
          Text(
            dateAndTime,
            style: TextStyle(
              fontSize: 13,
              color: const Color(0xff9b9fbb),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          Container(
            width: width * (329 / width),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // todo row of order number
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //todo text order number
                          Text(
                            orderNumber,
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff737895),
                              fontWeight: FontWeight.w500,
                              height: 1.6428571428571428,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            ': رقم الطلب',
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff737895),
                              height: 1.0454545454545454,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // todo ...نوع الطلب سباكه او نجار
                      Text(
                        orderType,
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff737895),
                          height: 1.0952380952380953,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // todo text of the currency
                          Text(
                            currency,
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xffE8333A),
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
                            '$salary',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xffE8333A),
                              height: 1.4375,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: height * (32 / height),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تم إنتهاء الخدمة',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff28af31),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "images/Group 38414.png",
                        width: 20,
                        height: 20,
                      )
                    ],
                  ),
                  color: const Color(0xffd6ebda),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            technicianName,
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff182061),
                              height: 0.9583333333333334,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "images/circle_done.png",
                                width: 15,
                                height: 15,
                              ),
                              SizedBox(
                                width: 5,
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
                                      text: '$how_many_requests',
                                      style: TextStyle(
                                        fontSize: 18,
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
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 18,
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
                                    fontSize: 18,
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
                                '$rate',
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
                        radius: 35,
                        backgroundColor: Color(0xffFFCA34),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget canceled_order(BuildContext context, double width) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, "Canceled_order");
    },
    child: Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '10/01/2021 - 06:00PM',
            style: TextStyle(
              fontSize: 13,
              color: const Color(0xff9b9fbb),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: width * (329 / width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: width,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '89858695 : رقم الطلب',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff182061),
                          height: 1.0454545454545454,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'السباكة - حمام - تصليح حنفية',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff737895),
                          height: 1.0952380952380953,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // todo text of the currency
                          Text(
                            'درهم',
                            style: TextStyle(
                              fontSize: 18,
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
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: 35,
                  child: Center(
                    child: Text(
                      'طلب ملغي',
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff182061),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  color: const Color(0xffe0e1ea),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
            ),
          )
        ],
      ),
    ),
  );
}
Widget guarantee_widget(
    {
      required BuildContext context,
      required double width,
      required double height,
      required String dateAndTime,
      required String orderNumber,
      required String orderType,
      required int salary,
    }
    ) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         dateAndTime,
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          width: width * (329 / width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //todo text order number
                          Text(
                            orderNumber,
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff737895),
                              fontWeight: FontWeight.w500,
                              height: 1.6428571428571428,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            ': رقم الطلب',
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xff737895),
                              height: 1.0454545454545454,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                       orderType,
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff737895),
                          height: 1.0952380952380953,
                        ),
                        textHeightBehavior: TextHeightBehavior(
                            applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // todo text of the currency
                          Text(
                            currency,
                            style: TextStyle(
                              fontSize: 18,
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
                            '$salary',
                            style: TextStyle(
                              fontSize: 16,
                              color: const Color(0xffe8333a),
                              height: 1.4375,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          )
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: width * (134 / width),
                      height: height * (32 / height),
                      child: Center(
                        child: Text(
                          'طلب متابعة صيانة',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            height: 1.0952380952380953,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: [
                            const Color(0xff182061),
                            const Color(0xff16267d)
                          ],
                          stops: [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4.0),
                          bottomRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width * (186 / width),
                    height: height * (32 / height),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            '30/03/2021',
                            style: TextStyle(
                              fontSize: 12,
                              color: const Color(0xff182061),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'تاريخ إنتهاء الضمان',
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color(0xff182061),
                            height: 1.2777777777777777,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffe0e1ea),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
            border:
            Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        ),
      ],
    ),
  );

}
Widget Warranty_expiry(double width, double height) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text date of order
        Text(
          '10/01/2021 - 06:00PM',
          style: TextStyle(
            fontSize: 13,
            color: const Color(0xff9b9fbb),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    // todo row of order number
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //todo text order number
                        Text(
                          '89858695',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff737895),
                            fontWeight: FontWeight.w500,
                            height: 1.6428571428571428,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          ': رقم الطلب',
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xff737895),
                            height: 1.0454545454545454,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // todo ...نوع الطلب سباكه او نجار
                    Text(
                      "السباكة - حمام - تصليح حنفية",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff737895),
                        height: 1.0952380952380953,
                      ),
                      textHeightBehavior: TextHeightBehavior(
                          applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // todo text of the currency
                        Text(
                          currency,
                          style: TextStyle(
                            fontSize: 18,
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
                          "70",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xffe8333a),
                            height: 1.4375,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],
                    ),
                  ],),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*(134/width),
                    height: height*(32/height),
                    child: Center(
                      child: Text(
                        'طلب متابعة صيانة',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xffffffff),
                          height: 1.0,
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
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4.0),
                        bottomRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  Container(
                    width: width*(186/width),
                    height: height*(32/height),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '30/03/2021',
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color(0xff182061),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'تاريخ إنتهاء الضمان',
                          style: TextStyle(
                            fontSize: 13,
                            color: const Color(0xff182061),
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],),
                    decoration: BoxDecoration(
                      color: const Color(0xffe0e1ea),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        bottomLeft: Radius.circular(4.0),
                      ),
                    ),
                  )

                ],)
            ],),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        ),
      ],
    ),
  );
}


