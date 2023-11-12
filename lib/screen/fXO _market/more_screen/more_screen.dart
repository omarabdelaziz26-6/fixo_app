import 'package:flutter/material.dart';

import '../../../componnet/componnetAuth.dart';
class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: width,
            height: height*(108/height),
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffF4B504),
                      child: Icon(
                        Icons.home_filled,
                        color: Color(0xff182061),
                      ),
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
          buildMoreScreenWidget(width, height, "الطلبات", "images/Icon_doc.png", context,pusName: "OrdersMarket"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "المحفظة", "images/Icon awesome-wallet.png", context,pusName: "walletMarket"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "حسابي", "images/Icon_user.png", context,pusName: "MyAccount"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "العناوين المحفوظة", "images/Icon awesome-map-marker-alt.png", context,pusName: "SavedTitles"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "الدعم والمساندة", "images/Icon awesome-headphones.png", context,pusName: "SupportAndSupport"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "اتفاقية المستخدم", "images/Icon awesome-handshake.png", context,pusName: "UserAgreement"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "شارك وإكسب رصيد", "images/Icon_user.png", context,pusName: "ShareAndEarnCredits"),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "سجل كمزود خدمة", "images/Icon_user.png", context),
          SizedBox(height: 10,),

          buildMoreScreenWidget(width, height, "سجل كتاجر", "images/Icon_user.png", context),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * (290 / width),
                height: height * (43 / height),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Switch(value: true, onChanged: (value){},activeColor: Color(0xff182061),),
                    Text(
                      "الإشعارات",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffffffff)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: width * (43 / width),
                height: height * (43 / height),
                child: IconButton(
                  icon: Image.asset("images/Icon material-notifications.png"),
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 1.0, color: const Color(0xffffffff)),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showDialog(context: context, builder: (_){
                return AlertDialog(
                  backgroundColor: Colors.black12,
                  content: Container(
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/Layer 2.png",width: 80,height: 80,),
                        Text(
                          'هل انت متاكد من تسجيل الخروج؟',
                          style: TextStyle(
                              fontSize: 18,
                              color:  Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: [

                            Expanded(child: MaterialButton(onPressed: (){
                              Navigator.pushNamedAndRemoveUntil(context, "loginScreen", (route) => false);

                            },child: Text("تسجيل الخروج",style: TextStyle(color: Color(0xff182061),fontWeight: FontWeight.bold),),color: Colors.red[900],)),
                            SizedBox(width: 10,),
                            Expanded(child: MaterialButton(onPressed: (){
                              Navigator.pop(context);
                            },child: Text("إلغاء",style: TextStyle(color: Color(0xff182061),fontWeight: FontWeight.bold),),color: Color(0xffFFCA34),)),
                          ],
                        )
                      ],),),
                );
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * (290 / width),
                  height: height * (43 / height),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10),
                  child:Text(
                    'تسجيل الخروج',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xffe8333a),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1.0, color: const Color(0xffffffff)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: width * (40 / width),
                  height: height * (40 / height),
                  child: IconButton(
                    icon: Image.asset("images/Icon_download.png"),
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1.0, color: const Color(0xffffffff)),
                  ),
                )
              ],
            ),
          ),


          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("images/Group 38474.png"),
          ),
          SizedBox(height: 20,),

        ],

      ),
    );
  }
  Widget buildMoreScreenWidget(
      double width, double height, String name, String image, BuildContext context,
      {String? pusName}) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, pusName!);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * (290 / width),
            height: height * (43 / height),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 10),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xff182061),
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1.0, color: const Color(0xffffffff)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: width * (43 / width),
            height: height * (43 / height),
            child: IconButton(
              icon: Image.asset(image),
              onPressed: () {},
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(width: 1.0, color: const Color(0xffffffff)),
            ),
          )
        ],
      ),
    );
  }
}
