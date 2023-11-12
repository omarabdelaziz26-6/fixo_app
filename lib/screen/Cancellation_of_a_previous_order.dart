import 'package:flutter/material.dart';

import '../componnet/componnetAuth.dart';
class Cancellation_of_a_previous_order extends StatelessWidget {
  const Cancellation_of_a_previous_order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: defaultContainer(text: "تأكيد", context: context),

      body: Column(
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
                    Text("      "),
                    Text(
                      'إلغاء طلب سابق',
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
          SizedBox(height: 10,),

          Container(
            width: width,
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                SizedBox(height: 10,),

                Text(
                  'يرجى العلم سيتم خصم مبلغ 15 درهم رسوم إلغاء الطلب السابق',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff182061),
                    height: 1.2,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),

                Text(
                  'أختر طريقة الدفع',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xff182061),
                    height: 1,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(height: 20,),
                method_off_paying(width, height,Icons.credit_card,"البطاقة الإئتمانية",Color(0xff182061)),
                SizedBox(height: 10,),
                method_off_paying(width, height,Icons.money_outlined,"نقدا",Color(0xff28AF31)),
                SizedBox(height: 10,),
                method_off_paying(width, height,Icons.account_balance_wallet,"المحفظة",Color(0xff182061)),

              ],
            ),
          )

        ],),
    );
  }
  Widget method_off_paying(double width, double height,IconData icon,String text,Color iconColor) {
    return Container(
      padding: EdgeInsets.all(5),
      width: width,
      height: height*(44/height),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Radio(value: 1, groupValue: 2, onChanged: (_){})     ,
          Row(children: [
            Text(
              text,
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
            Icon(icon,color: iconColor,)
          ],)
        ],),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
      ),
    );
  }

}
