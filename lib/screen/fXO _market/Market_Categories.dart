import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import '../../componnet/componnetAuth.dart';

class MarketCategory extends StatelessWidget {
  const MarketCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      return  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * (109 / height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffF4B504),
                        child: Icon(
                          Icons.home_filled,
                          color: Color(0xff182061),
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
            // Container(
            //   width: width,
            //   height: height * (50 / height),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         ...categories.map((e) {
            //           return Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: InkWell(
            //               onTap: (){
            //                 cubit.changeSelectedOfCategory(e.id);
            //               },
            //               child: Column(
            //                 children: [
            //                   Text(
            //                     e.name,
            //                     style: TextStyle(
            //                       fontSize: 16,
            //                       color:cubit.selectedOfCategory==e.id? Color(0xff182061) :Color(0xff737895),
            //                     ),
            //                     textHeightBehavior: TextHeightBehavior(
            //                         applyHeightToFirstAscent: false),
            //                   ),
            //                   Container(
            //                     width: width * (67 / width),
            //                     height: 1,
            //                     color: cubit.selectedOfCategory==e.id?Color(0xffFFCA34):Colors.white.withOpacity(0),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           );
            //         }).toList()
            //       ],
            //     ),
            //   ),
            //   color: const Color(0xffffffff),
            // ),
            SizedBox(height: 5,),
            // GridView.count(
            //   mainAxisSpacing: 10,
            //   crossAxisSpacing: 0,
            //   physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            //   shrinkWrap: true,
            //   crossAxisCount: 4,children: [
            //   ...categories.map((e) {
            //     return Column(
            //       children: [
            //         Container(
            //           width: width*(66/width),
            //           height: width*(66/width),
            //           padding: EdgeInsets.all(8),
            //           child: Image.asset(e.image,fit: BoxFit.contain,),
            //           decoration: BoxDecoration(
            //
            //             color: const Color(0xffffffff),
            //
            //             borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            //             border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
            //           ),
            //         ),
            //         SizedBox(height: 5,),
            //         Text(
            //
            //           '${e.name}',
            //           style: TextStyle(
            //             fontSize: 10,
            //             color: const Color(0xff182061),
            //           ),
            //           textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            //           textAlign: TextAlign.center,
            //           softWrap: false,
            //         )
            //       ],
            //     );
            //   }).toList()
            // ],)


          ],
        ),
      );
    }, listener: (context,state){});

  }
}
