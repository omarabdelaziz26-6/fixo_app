import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/componnet/componnent.dart';
import 'package:santos/componnet/componnetAuth.dart';

import '../../../bloc/cubit.dart';
import '../../../bloc/state.dart';

class OrdersMarket extends StatelessWidget {
  const OrdersMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit, AppState>(
        builder: (context, state) {
          AppCubit cubit = BlocProvider.of(context);

          return Scaffold(
            backgroundColor: Color(0xFFF3F4F6),
            body: Container(
              child: Column(
                children: [
                  Container(
                    color: Color(0xFF182061),
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          goToChat(context),
                          Text(
                            'الطلبات',
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color(0xffffca34),
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                          arrowBack(context: context)
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                              'المنتجات',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xff182061),
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xffe0e1ea),
                          ),
                          height: 42,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        width: 1,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffe0e1ea),
                          ),
                          child: Center(
                            child: Text(
                              'الخدمات',
                              style: TextStyle(
                                fontSize: 14,
                                color: const Color(0xff737895),
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          height: 42,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeNumberOfBodyOrdersScreen(2);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'الضمان',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: cubit.numberBody == 2
                                      ? Color(0xff182061)
                                      : Color(0xff737895),
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            height: 42,
                            decoration: BoxDecoration(
                              color: const Color(0xffe0e1ea),
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0,
                                    color: cubit.numberBody == 2
                                        ? Color(0xffFCB70A)
                                        : Color(0xffe0e1ea)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeNumberOfBodyOrdersScreen(1);
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'الإستبدال والاسترجاع',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: cubit.numberBody == 1
                                      ? Color(0xff182061)
                                      : Color(0xff737895),
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            height: 42,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0,
                                    color: cubit.numberBody == 1
                                        ? Color(0xffFCB70A)
                                        : Color(0xffe0e1ea)),
                              ),
                              color: const Color(0xffe0e1ea),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            cubit.changeNumberOfBodyOrdersScreen(0);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffe0e1ea),
                              border: Border(
                                bottom: BorderSide(
                                    width: 2.0,
                                    color: cubit.numberBody == 0
                                        ? Color(0xffFCB70A)
                                        : Color(0xffe0e1ea)),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'الطلبات',
                              style: TextStyle(
                                fontSize: 16,
                                color: cubit.numberBody == 0
                                    ? Color(0xff182061)
                                    : Color(0xff737895),
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            )),
                            height: 42,
                          ),
                        ),
                      ),
                    ],
                  ),
                  cubit.numberBody == 0
                      ? order(context)
                      : cubit.numberBody == 1
                          ? transferAndBack(context)
                          : daman(context),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }

  Widget order(
    BuildContext context,
  ) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          //todo details number 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '10/01/2021 - 06:00PM',
                style: TextStyle(
                  fontFamily: 'URWGeometricArabic ☞',
                  fontSize: 13,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              Container(
                width: MediaQuery.of(context).size.width *
                    (329 / MediaQuery.of(context).size.width),
                height: MediaQuery.of(context).size.height *
                    (127 / MediaQuery.of(context).size.height),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '89858695',
                          style: TextStyle(
                            fontSize: 13,
                            color: const Color(0xff182061),
                            height: .5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        Text(
                          ': رقم الطلب',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1.0454545454545454,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[400],
                      thickness: .5,
                    ),
                    Text(
                      '2 عدد المنتجات',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
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
                            Text(
                              '200',
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
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'المجموع الفرعي',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff182061),
                            height: 1.608695652173913,
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
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4.0),
                  border:
                      Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: .5,
          ),
          SizedBox(
            height: 20,
          ),
          //todo details number 2 of order is done
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '10/01/2021 - 06:00PM',
                style: TextStyle(
                  fontFamily: 'URWGeometricArabic ☞',
                  fontSize: 13,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              Container(
                width: MediaQuery.of(context).size.width *
                    (329 / MediaQuery.of(context).size.width),
                height: MediaQuery.of(context).size.height *
                    (166 / MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '89858695',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff182061),
                                  height: .5,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                              Text(
                                ': رقم الطلب',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: const Color(0xff182061),
                                  height: 1.0454545454545454,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey[400],
                            thickness: .5,
                          ),
                          Text(
                            '2 عدد المنتجات',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
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
                                  Text(
                                    '200',
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
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'المجموع الفرعي',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: const Color(0xff182061),
                                  height: 1.608695652173913,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height *
                          (38 / MediaQuery.of(context).size.height),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تم تسليم الطلب',
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
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xff28AF31),
                            child: Center(
                              child: Icon(
                                Icons.done_rounded,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                      color: const Color(0xffd6ebda),
                    )
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
        ],
      );

  Widget transferAndBack(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text(
            '10/01/2021 - 06:00PM',
            style: TextStyle(
              fontFamily: 'URWGeometricArabic ☞',
              fontSize: 13,
              color: const Color(0xff9b9fbb),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          Container(
            width: MediaQuery.of(context).size.width *
                (329 / MediaQuery.of(context).size.width),
            height: MediaQuery.of(context).size.height *
                (166 / MediaQuery.of(context).size.height),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // todo date
                          Container(
                            width: MediaQuery.of(context).size.width *
                                (35 / MediaQuery.of(context).size.width),
                            padding: EdgeInsets.all(2),

                            child: Center(
                              child: Text(
                                '13\nيوم',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: const Color(0xff68551a),
                                ),
                              ),
                            ),
                            color: const Color(0xfff3ba35),
                          ),
                          Image.asset(
                            "images/6234304_web2_prod_normal_2.png",
                            width: MediaQuery.of(context).size.width *
                                (70 / MediaQuery.of(context).size.width),
                            height: MediaQuery.of(context).size.width *
                                (70 / MediaQuery.of(context).size.width),
                          )
                        ],
                      ),
                      Text(
                        'بانيو ريما من لامار صنع في السعودية - ابيض',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff36393b),
                          height: 0.9047619047619048,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
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
                              Text(
                                '200',
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
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height *
                      (38 / MediaQuery.of(context).size.height),
                  child: Center(
                    child: Text(
                      'إستبدال او إسترجاع المنتج',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  color: const Color(0xff182061),
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
      );

  Widget daman(BuildContext context) => Column(
        children: [
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "User132");
              },
              child: Container()),
        ],
      );
}
