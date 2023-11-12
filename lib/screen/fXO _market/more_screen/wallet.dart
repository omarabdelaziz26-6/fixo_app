import 'package:flutter/material.dart';
import 'package:santos/componnet/componnent.dart';
import 'package:santos/componnet/componnetAuth.dart';

import '../../homePage/wallet/walletComponnet.dart';


class WalletMarket extends StatelessWidget {
  const WalletMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: width,
            height: height*(110/height),
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                goToChat(context),
                Text(
                  'المحفظة',
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
          SizedBox(height: 20,),

          // wallet Logo
          Image.asset("images/wallet (1).png",width: width*(142/width),height: height*(128/height),),
          SizedBox(height: 20,),
          Text(
            'رصيدك الحالي',
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xff182061),
            ),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          SizedBox(height: 20,),
          // todo number of Your current balance
          Container(
            width: width*(297/width),
            height: height*(43/height),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Text(
                  '70',
                  style: TextStyle(
                    fontSize: 18,
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
          SizedBox(height: 15,),
          // gift credit and recharge the balance
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //todo recharge the balance
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        isDismissible: true,
                        useRootNavigator: true,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        context: context,
                        builder: (_){
                          return rechargeTheBalanceBottomSheet(height);
                        });
                  },
                  child: Container(
                    width: width*(139/width),
                    height: height*(125/height),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/Subtraction 10.png",width: width*(40/width),height: height*(37/height),),
                        SizedBox(height: 10,),
                        Text(
                          'شحن رصيد',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff182061),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x17182061),
                          offset: Offset(0, 5),
                          blurRadius: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width*(19/width),),
                //todo gift credit
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        useRootNavigator: true,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        context: context, builder: (_){
                      return giftCreditBottomSheet(height);
                    });
                  },
                  child: Container(
                    width: width*(139/width),
                    height: height*(125/height),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/Icon ionic-ios-gift.png",width: width*(44/width),height: height*(48/height),),
                        SizedBox(height: 5,),
                        Text(
                          'إهداء رصيد',
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xff182061),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        )
                      ],),

                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x17182061),
                          offset: Offset(0, 5),
                          blurRadius: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          // todo Operations details Screen
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "OperationsDetails");
            },
            child: Container(
              width: width*(297/width),
              height: height*(43/height),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تفاصيل العمليات',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff182061),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  SizedBox(width: 5,),
                  Image.asset("images/Icon_doc.png",width: width*(17/width),height: height*(20/height),)
                ],
              ),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x17182061),
                    offset: Offset(0, 5),
                    blurRadius: 18,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 12,),
          // todo Card management
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "CardManagement");
            },
            child: Container(
              width: width*(297/width),
              height: height*(43/height),
              child: Center(
                child: Text(
                  'إدارة البطاقات',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xfff3ba35),
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x17182061),
                    offset: Offset(0, 5),
                    blurRadius: 18,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),

        ],),
      ),
    );
  }
}
