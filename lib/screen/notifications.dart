import 'package:flutter/material.dart';

import '../componnet/componnetAuth.dart';
class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Column(children: [
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
                    'الإشعارات',
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
          // todo لديك كوبون خصم
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20/09/2020 - 1:00PM',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Stack(

                children: [
                Container(
                  width: width*(338/width),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10,),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 17,
                            color: const Color(0xff182061),
                            height: 0.9583333333333334,
                          ),
                          children: [
                            TextSpan(
                              text: 'لديك كوبون خصم جديد بنسبة ',
                            ),
                            TextSpan(
                              text: '30',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: '%من قيمة الطلب',
                            ),
                          ],
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.copy),color: Color(0xff68551A),),
                          ),
                          Text(
                            '5847GQ54',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff68551a),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                        ],
                      )
                    ],),
                  color: const Color(0xfff3ba35),
                ),
                Image.asset("images/Path 38724.png",width: 35,height: 35,)


              ],),
            ],
          ),
          SizedBox(height: 20,),
          // todo Container of تم إستلام 100 درهم كهدية على محفظتك
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20/09/2020 - 1:00PM',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Container(
                width: width*(338/width),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff182061),
                                height: 0.9583333333333334,
                              ),
                              children: [
                                TextSpan(
                                  text: 'تم إستلام ',
                                ),
                                TextSpan(
                                  text: '100',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                TextSpan(
                                  text: ' درهم كهدية على محفظتك',
                                ),
                              ],
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(height: 3,),
                          Text(
                            '+971 123456789 من رقم',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xffcc9d1a),
                              height: 0.9583333333333334,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          )
                        ],),
                        SizedBox(width: 10,),
                        Image.asset("images/Group 38691.png",width: width*(40/width),height: width*(40/width),),

                      ],
                    ),
                    SizedBox(height: 15,),

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
          SizedBox(height: 20,),
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20/09/2020 - 1:00PM',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Container(
                width: width*(338/width),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      '89858695 : رقم الطلب',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.0454545454545454,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'يرجى العلم انه اقترب موعد وصول الفني',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 0.9583333333333334,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xffe8333a),
                          height: 0.9583333333333334,
                        ),
                        children: [
                          TextSpan(
                            text: 'الوقت المتبقي : ',
                          ),
                          TextSpan(
                            text: '30',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: ' دقيقة',
                          ),
                        ],
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 15,),

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
          SizedBox(height: 20,),
          // todo Container of تم قبول طلبك'
          Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20/09/2020 - 1:00PM',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Container(
                width: width*(338/width),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      '89858695 : رقم الطلب',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.0454545454545454,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'تم قبول طلبك',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff28af31),
                        height: 0.9583333333333334,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 15,),

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
          SizedBox(height: 20,),
          // todo Container of الفني في الطريق
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20/09/2020 - 1:00PM',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Container(
                width: width*(338/width),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      '89858695 : رقم الطلب',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.0454545454545454,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'الفني في الطريق',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xffcc9d1a),
                        height: 0.9583333333333334,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                    SizedBox(height: 15,),

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
          SizedBox(height: 20,),
          // todo Container of الفني في الطريق
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20/09/2020 - 1:00PM',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color(0xff9b9fbb),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              ),
              Container(
                width: width*(338/width),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 15,),
                    Text(
                      '89858695 : رقم الطلب',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 1.0454545454545454,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    SizedBox(height: 5,),

                    Text(
                      'الفني عندك',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                        height: 0.9583333333333334,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),                    SizedBox(height: 15,),

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



        ],),
      ),
    );
  }
}
