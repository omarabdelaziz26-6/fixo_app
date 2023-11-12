import 'package:flutter/material.dart';
import 'package:santos/componnet/componnetAuth.dart';

class NextOfferScreen extends StatelessWidget {
  const NextOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: height*(85/height),
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "Paying_off");
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
                              height: 2
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'المجموع',
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
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'درهم',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xff1d2226),
                            height: 1,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '400',
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

      backgroundColor: Color(0xffF3F4F6),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                width: width,
                height: height*(136/height),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(""),
                    arrowBack(context: context)
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
              Container(
                width: double.infinity,
                height: height*(154/height),
                margin: EdgeInsets.only(top: 90,left: 10,right: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/Mask Group 24.png"),fit: BoxFit.fill)
                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          Text(
            'باقة تنظيف الاثاث',
            style: TextStyle(
              fontSize: 18,
              color: const Color(0xff182061),
              height: 0.7931034482758621,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
          SizedBox(height: 10,),

          Container(
            width: double.infinity,
            height: height*(42/height),
            padding: EdgeInsets.all(5),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 20,backgroundColor: Color(0xffFFCA34),child:
                Center(child:
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.minimize_outlined,color: Colors.white,size: 15,),
                ) )),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                CircleAvatar(radius: 20,backgroundColor: Color(0xffFFCA34),child: Icon(Icons.add,color: Colors.white,size: 15,),),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color:  Color(0xffE0E1EA),
              borderRadius: BorderRadius.circular(21.0),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            width: width,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'الوصف',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xff182061),
                    height: 1,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(height: 10,),

                Text(
                  'باقة تنظيف الأثاث هي باقة تشمل مجموعة من قطع الأثاث بعدد ثابث ومحدد وتشمل تنظيف وغسيل الأثاث بغسيل عميق لإزالة البقع وتشمل الباقة محددة السعر التالي',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xff505888),
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تنظيف طقم كنب',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                        height: 0.9166666666666666,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(width: 5,),

                    Image.asset("images/asset1.png",width: 20,height: 30,),

                   ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تنظيف ستائر',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                        height: 0.9166666666666666,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(width: 5,),
                    Image.asset("images/asset1.png",width: 20,height: 30,),

                   ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تنظيف طقم كنب',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                        height: 0.9166666666666666,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(width: 5,),

                    Image.asset("images/asset1.png",width: 20,height: 30,),

                   ],
                ),
                SizedBox(height: 10,),

                Text(
                  'باقة تنظيف الأثاث هي باقة تشمل مجموعة من قطع الأثاث بعدد ثابث ومحدد وتشمل تنظيف وغسيل الأثاث بغسيل عميق لإزالة البقع وتشمل الباقة محددة السعر التالي',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xff505888),
                    height: 1.5,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 10,),

              ],
            ),
          )

        ],),
      ),
    );
  }
}
