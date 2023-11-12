
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import 'package:santos/constants/color.dart';

import '../../../../componnet/componnent.dart';
import '../../../../componnet/componnetAuth.dart';
class SavedTitles extends StatelessWidget {
  const SavedTitles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      AppCubit cubit = BlocProvider.of(context);
      return Scaffold(
        backgroundColor: Color(0xffF3F4F6),
        body: Column(
          children: [
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
                      'العناوين المحفوظة',
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
            // address Container
            InkWell(
                onTap: (){
                  cubit.changeAddressSelected(1);
                },
                child: addressContainer(height:height, width:width,number: 1,placeText: "المنزل",addressDetails1Text: "ميدان سفينكس , المعادي , القاهرة , مصر",addressDetails2Text: "مبنى رقم 2 - الدور الاول - شقة رقم 11")),
            SizedBox(height: 20,),
            InkWell(
                onTap: (){
                  cubit.changeAddressSelected(2);
                },
                child: addressContainer(height:height, width:width,number: 2,placeText: "العمل",addressDetails1Text: "ميدان سفينكس , المعادي , القاهرة , مصر",addressDetails2Text: "مبنى رقم 2 - الدور الاول - شقة رقم 11")),



          ],),
        bottomNavigationBar: defaultContainer(text: "إضافة عنوان جديد", context: context),
      );
    }, listener: (context,state){});
  }

  Widget addressContainer({
    required double height,
    required double width,
    int number = 0, // number of selected address
    String placeText = "",
    String addressDetails1Text = "",
    String addressDetails2Text = "",


  }) {
    return BlocBuilder<AppCubit,AppState>(builder: (context,state){
      AppCubit cubit = BlocProvider.of(context);
      return Container(
        height: height*(106/height),
        width: width*(338/width),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // place work or home...

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // place work or home...
                Text(
                  placeText,
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xff182061),
                    height: 0.92,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                SizedBox(width: 5,),
                Image.asset("images/map pin.png",width: 20,height: 20,)
              ],
            ),
            // address details ex. ميدان سفينكس , المعادي , القاهرة , مصر
            Text(
              addressDetails1Text,
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xff737895),
                height: 1,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            // address details2 ex. مبنى رقم 2 - الدور الاول - شقة رقم 11

            Text(
              addressDetails2Text,
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xff737895),
                height: 1,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),


          ],),
        decoration: BoxDecoration(
          border: Border.all(
            color: number==cubit.addressSelected?colorYellow:Colors.white.withOpacity(0),
          ),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: const Color(0x0d000000),
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
        ),
      );
    },);
  }
}
