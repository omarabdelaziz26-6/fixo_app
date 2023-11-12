import 'package:flutter/material.dart';
import 'package:santos/componnet/componnetAuth.dart';

class Category_selected extends StatelessWidget {
  const Category_selected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
        Container(
          width: width,
          height: height*(185/height),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // favourite button & shop car button

                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(children: [
                        // shop car button
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Icon(Icons.shopping_cart,color: Colors.white,size: 22,),

                            CircleAvatar(radius: 6,backgroundColor: Color(0xffF4B504),),
                          ],),
                        SizedBox(width: 10,),
                        //favourite button
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Icon(Icons.favorite_outline,color: Colors.white,size: 22,),

                            CircleAvatar(radius: 6,backgroundColor: Color(0xffF4B504),),
                          ],),
                      ],),
                    ),
                    Text(
                      'الاكثر مبيعاً',
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
                ),
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
          Container(
            width: width * (253 / width),
            height: height * (40 / height),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                showCursor: false,
                style:
                TextStyle(color: Color(0xffF4B504), fontSize: 13),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "ابحث باسم المنتج",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0x45000000),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),


        ],),
    );
  }
}
