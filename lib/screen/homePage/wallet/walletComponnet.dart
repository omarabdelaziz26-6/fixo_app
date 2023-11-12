import 'package:flutter/material.dart';

import '../../../componnet/componnetAuth.dart';

giftCreditBottomSheet(double height) => Container(
      width: double.infinity,
      height: height * (414 / height),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    "images/Icon ionic-ios-gift.png",
                    width: 100,
                    height: 108,
                  ),
                ),
                Text(
                  'إهداء رصيد',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xff182061),
                    height: 0.7666666666666667,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                //todo enter credit textFormField
                defaultNewTextFormField(
                    labelName: "أدخل المبلغ",
                    labelStar: "",
                    hint: "50",
                    textInputType: TextInputType.number,
                    labelTextColor: Colors.black,
                    horizontal: 10),
                //todo phone number textFormField
                defaultNewTextFormField(
                    labelName: "رقم الجوال",
                    labelStar: "",
                    hint: "00123456789",
                    textInputType: TextInputType.number,
                    horizontal: 10,
                    labelTextColor: Colors.black),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //todo close button & todo gift credit button
            Row(
              children: [
                //todo close button
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 58,
                      child: Center(
                        child: Text(
                          'إلغاء',
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color(0xff182061),
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      color: const Color(0xfff1f1f2),
                    ),
                  ),
                ),
                // todo gift credit button
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 58,
                      child: Center(
                        child: Text(
                          'إهداء رصيد',
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
                          begin: Alignment(-0.613, 0.0),
                          end: Alignment(0.58, 0.25),
                          colors: [
                            const Color(0xff182061),
                            const Color(0xff16267d)
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );


rechargeTheBalanceBottomSheet(double height) => Container(
      width: double.infinity,
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    "images/Subtraction 10.png",
                    width: 100,
                    height: 108,
                  ),
                ),
                Text(
                  'شحن رصيد',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xff182061),
                    height: 0.7666666666666667,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),                //todo enter credit textFormField
                defaultNewTextFormField(
                    labelName: "الاسم",
                    labelStar: "",
                    hint: "ادخل الاسم",
                    textInputType: TextInputType.name,
                    labelTextColor: Colors.black,
                    horizontal: 10),
                //todo phone number textFormField
                defaultNewTextFormField(
                    labelName: "رقم البطاقة",
                    labelStar: "",
                    hint: "ادخل رقم البطاقة",
                    textInputType: TextInputType.number,
                    horizontal: 10,
                    labelTextColor: Colors.black),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //todo MM / YY in card  & todo CVV number
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  //todo  MM / YY in card
                  Expanded(
                    child: defaultNewTextFormField(labelName: "MM / YY", labelStar: "", hint: "30/12",labelTextColor: Colors.black)
                  ),
                  SizedBox(width: 10,),
                  // todo CVV number
                  Expanded(
                      child: defaultNewTextFormField(labelName: "CVV", labelStar: "", hint: "719",labelTextColor: Colors.black)
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            // todo done button
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                height: 58,
                child: Center(
                  child: Text(
                    'تأكيد',
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
                    begin: Alignment(-0.613, 0.0),
                    end: Alignment(0.58, 0.25),
                    colors: [const Color(0xff182061), const Color(0xff16267d)],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );
addNewCreditBottomSheet(double height) => Container(
      width: double.infinity,
      height: height * (500 / height),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

                Text(
                  'إضافة بطاقة جديدة',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xff182061),
                    height: 0.7666666666666667,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                //todo enter credit textFormField
                defaultNewTextFormField(
                    labelName: "الاسم",
                    labelStar: "",
                    hint: "ادخل الاسم",
                    textInputType: TextInputType.name,
                    labelTextColor: Colors.black,
                    horizontal: 10),
                //todo phone number textFormField
                defaultNewTextFormField(
                    labelName: "رقم البطاقة",
                    labelStar: "",
                    hint: "ادخل رقم البطاقة",
                    textInputType: TextInputType.number,
                    horizontal: 10,
                    labelTextColor: Colors.black),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //todo MM / YY in card  & todo CVV number
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  //todo  MM / YY in card
                  Expanded(
                    child: defaultNewTextFormField(labelName: "MM / YY", labelStar: "", hint: "30/12",labelTextColor: Colors.black)
                  ),
                  SizedBox(width: 10,),
                  // todo CVV number
                  Expanded(
                      child: defaultNewTextFormField(labelName: "CVV", labelStar: "", hint: "719",labelTextColor: Colors.black)
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            // todo done button
            InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                height: 58,
                child: Center(
                  child: Text(
                    'تأكيد',
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
                    begin: Alignment(-0.613, 0.0),
                    end: Alignment(0.58, 0.25),
                    colors: [const Color(0xff182061), const Color(0xff16267d)],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );

