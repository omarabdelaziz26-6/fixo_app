import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import 'package:santos/screen/homePage/order/currentOrder.dart';
import 'package:santos/screen/homePage/order/finishedOrder.dart';

import '../../../componnet/componnent.dart';
import 'guaranteeOrder.dart';
class OrderScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey ;
  const OrderScreen( {required this.scaffoldKey}) ;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      AppCubit cubit = BlocProvider.of(context);
      return SingleChildScrollView(
        child: Column(children: [
          // drawer & Notification Number
          Container(
            width: width,
            height: height*(90/height),
            padding: EdgeInsets.only(right: 10,bottom: 10,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //todo text notification Number
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  // you can see notificationButton in component dartFile
                  child: notificationButton(context),
                ),
                // Drawer
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: InkWell(
                      onTap: (){
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Image.asset("images/Icon_menu.png",width: 25,height: 25,)),
                ),

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
          Row(children: [
            Expanded(
              child: Container(
                height: height*(42/height),
                child: Center(
                  child: Text(
                    'المنتجات',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff737895),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                color: const Color(0xffe0e1ea),
              ),
            ),
            SizedBox(width: 2,),
            Expanded(
              child: Container(
                height: height*(42/height),
                color: const Color(0xffe0e1ea),
                child: Center(
                  child: Text(
                    'الخدمات',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff182061),
                      height: 1,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
              ),
            ),
          ],),
          Row(children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  cubit.changeStatusOrder("guarantee");
                },
                child: Container(
                  height: height*(42/height),
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e1ea),
                    border: Border(
                      bottom: BorderSide(width: 2.0, color:cubit.statusOrder=="guarantee"? Color(0xffFCB70A): Colors.white.withOpacity(0)),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'الضمان',
                      style: TextStyle(
                        fontSize: 17,
                        color: cubit.statusOrder=="guarantee"? Color(0xff182061): Color(0xff737895),
                        height: 1,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  cubit.changeStatusOrder("finished");
                },
                child: Container(
                  height: height*(42/height),
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e1ea),
                    border: Border(
                      bottom: BorderSide(width: 2.0, color:cubit.statusOrder=="finished"? Color(0xffFCB70A): Colors.white.withOpacity(0)),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'المنتهية',
                      style: TextStyle(
                        fontSize: 17,
                        color: cubit.statusOrder=="finished"? Color(0xff182061): Color(0xff737895),
                        height: 1,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),

                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  cubit.changeStatusOrder("current");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffe0e1ea),
                    border: Border(
                      bottom: BorderSide(width: 2.0, color:cubit.statusOrder=="current"? Color(0xffFCB70A): Colors.white.withOpacity(0)),
                    ),
                  ),
                  height: height*(42/height),
                  child: Center(
                    child: Text(
                      'الحالية',
                      style: TextStyle(
                        fontSize: 17,
                        color: cubit.statusOrder=="current"? Color(0xff182061): Color(0xff737895),
                        height: 1,

                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,

                    ),
                  ),

                ),
              ),
            ),
          ],),

          cubit.statusOrder=="current"?CurrentOrders():cubit.statusOrder=="finished"?FinishedOrder():GuaranteeOrder()

        ],),
      );
    }, listener: (context,state){});
  }
}
