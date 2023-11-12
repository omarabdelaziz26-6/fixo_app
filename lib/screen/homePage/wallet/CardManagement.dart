import 'package:flutter/material.dart';
import 'package:santos/componnet/componnetAuth.dart';
import 'package:santos/screen/homePage/wallet/walletComponnet.dart';
class CardManagement extends StatelessWidget {
  const CardManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: InkWell(
        child:defaultContainer(text: "إضافة بطاقة جديدة", context: context,),
        onTap: (){
          showModalBottomSheet(context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              builder: (_){
            return addNewCreditBottomSheet(height);
          });
        },
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          height:height*(110/height) ,
          child: Column(
            children: [
              SizedBox(height: 55,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("      "),
                  Text(
                    'إدارة البطاقات',
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
              ),
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
        SizedBox(height: 20,),
        Container(

          width: width*(338/width),
          height: height*(44/height),
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){

                showModalBottomSheet(context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    builder: (_){
                  return Container(
                    width: double.infinity,
                    height: height*(198/height),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(children: [
                        SizedBox(height: 20,),
                        Icon(Icons.delete,color: Colors.red[800],size: 50,),
                        Text(
                          'هل أنت متأكد من حذف البطاقة',
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color(0xff182061),
                            height: 0.8666666666666667,
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ],),
                      Container(
                        width: double.infinity,
                        height: 55,
                        child:
                        Center(
                          child: Text(
                            'موافق',
                            style: TextStyle(
                              fontSize: 22,
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
                      )

                    ],),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                  );
                });
              }, icon: Icon(Icons.delete,color: Colors.red[800],)),
              Row(
                children: [
                  Text(
                    '*****************8455',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xffcc9d1a),
                      height: 1.5333333333333334,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
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
            border: Border.all(width: 1.0, color: const Color(0xffd8d8d8)),
          ),
        )

      ],),
    );
  }
}
