import 'package:flutter/material.dart';
import 'package:santos/componnet/componnent.dart';
import 'package:santos/componnet/componnetAuth.dart';
class OperationsDetails extends StatelessWidget {
  const OperationsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF3F4F6),
      body: Column(children: [
        Container(
          width: double.infinity,
          height:height*(110/height) ,
          child: Column(children: [
            SizedBox(height: 55,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // chat button
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: goToChat(context),
                ),
                Text(
                  'تفاصيل العمليات',
                  style: TextStyle(
                    fontSize: 18,
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
        Text(
          'رصيدك الحالي',
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff182061),
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        ),
        SizedBox(height: 20,),
        // todo text of number Balance & todo text of the currency
        Container(
          width: width*(297/width),
          height: height*(43/height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //todo text of number Balance
            Text(
              'درهم',
              style: TextStyle(
                fontSize: 18,
                color: const Color(0xffe8333a),
                height: 1,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
              SizedBox(width: 5,),
              //todo text of the currency
              Text(
                '3.300',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xffe8333a),
                  height: 1.4375,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              )
          ],),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        SizedBox(height: 20,),

        Divider(height: 2,color: Color(0xffE0E1EA),),
        SizedBox(height: 20,),

        Container(
          width: width*(329/width),
          height:height*(140/height) ,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //todo text of the currency
                  Text(
                  'درهم',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xffe8333a),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                   SizedBox(width: 5,),
                  //todo text of number Balance
                  Text(
                  '15-',
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color(0xffe8333a),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                  SizedBox(width: 5,),
                  Text(
                  ': المبلغ',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff36393b),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),

              ],),
              Text(
                'خصم رسوم تأكيد الطلب',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff36393b),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // number of order
                  Text(
                    '985965895',
                    style: TextStyle(
                      fontSize: 13,
                      color: const Color(0xff737895),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    ': رقم الطلب',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff36393b),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // text for date
                  Text(
                    '10/01/2021 ',
                    style: TextStyle(
                      fontSize: 13,
                      color: const Color(0xff737895),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    ': التاريخ',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xff36393b),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  )
                ],
              ),

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
