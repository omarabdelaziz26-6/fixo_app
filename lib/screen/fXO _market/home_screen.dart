import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import 'package:santos/componnet/componnetAuth.dart';

class HomeScreenFixoMarket extends StatelessWidget {
  const HomeScreenFixoMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      // AppCubit cubit = BlocProvider.of(context);
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
            //   child: Directionality(
            //     textDirection: TextDirection.rtl,
            //     child: SingleChildScrollView(
            //       scrollDirection: Axis.horizontal,
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           ...categories.map((e) {
            //             return Padding(
            //               padding: const EdgeInsets.all(10.0),
            //               child: InkWell(
            //                 onTap: (){
            //                   cubit.changeSelectedOfCategory(e.id);
            //                 },
            //                 child: Column(
            //                   children: [
            //                     Text(
            //                       e.name,
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         color:cubit.selectedOfCategory==e.id? Color(0xff182061) :Color(0xff737895),
            //                       ),
            //                       textHeightBehavior: TextHeightBehavior(
            //                           applyHeightToFirstAscent: false),
            //                     ),
            //                     Container(
            //                       width: width * (67 / width),
            //                       height: 1,
            //                       color: cubit.selectedOfCategory==e.id?Color(0xffFFCA34):Colors.white.withOpacity(0),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             );
            //           }).toList()
            //         ],
            //       ),
            //     ),
            //   ),
            //   color: const Color(0xffffffff),
            // ),
            Container(
              width: double.infinity,
              height: 183,
              child: ImageSlideshow(
                initialPage: 0,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: Colors.white,
                isLoop: false,
                //autoPlayInterval: 3000,
                children: [
                  Container(
                    width: double.infinity,
                    height: 183,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/56666.png"),
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    height: 183,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/56666.png"),
                        )),
                  ),

                ],
              ),
            ),

            //todo Shop by category
            // Container(
            //   width: width,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Text(
            //           'تسوقوا حسب الفئة',
            //           style: TextStyle(
            //             fontSize: 16,
            //             color: const Color(0xff182061),
            //           ),
            //           textHeightBehavior:
            //           TextHeightBehavior(applyHeightToFirstAscent: false),
            //           textAlign: TextAlign.center,
            //           softWrap: false,
            //         ),
            //       ),
            //
            //       Directionality(
            //         textDirection: TextDirection.rtl,
            //         child: SingleChildScrollView(
            //           scrollDirection: Axis.horizontal,
            //           child: Row(
            //             children: [
            //               ...shop_by_category.map((e) {
            //                 return Padding(
            //                   padding: const EdgeInsets.all(10.0),
            //                   child: InkWell(
            //                     onTap: (){
            //                       Navigator.pushNamed(context, "Category_selected", arguments: {
            //                         "name":e.name,
            //                         "id":"id"
            //                       });
            //                     },
            //                     child: Column(
            //                       children: [
            //                         CircleAvatar(
            //                           radius: width * (30 / width),
            //                           backgroundColor: Colors.white,
            //                           foregroundColor: Colors.black,
            //                           child: Center(
            //                               child: Image.asset(
            //                                 "images/Mask Group 26.png",
            //                                 width: 45,
            //                                 height: 45,
            //                               )),
            //                         ),
            //                         Text(
            //                           e.name,
            //                           style: TextStyle(
            //                             fontSize: 12,
            //                             color: const Color(0xff182061),
            //                             height: 1.2105263157894737,
            //                           ),
            //                           textHeightBehavior: TextHeightBehavior(
            //                               applyHeightToFirstAscent: false),
            //                           textAlign: TextAlign.center,
            //                           softWrap: false,
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 );
            //
            //               }).toList()
            //             ],
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 183,
              child: ImageSlideshow(
                initialPage: 0,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: Colors.white,
                isLoop: false,
                //autoPlayInterval: 3000,
                children: [
                  Container(
                    width: double.infinity,
                    height: 183,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/ar_banner-01 (10).png"),
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    height: height*(100/height),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/ar_banner-01 (10).png"),
                        )),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),

            //todo  remaining time Container
            Container(
              width: width,
              height: height*(55/height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '06:25:02',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: const Color(0xffffca34),
                      height: 1.0588235294117647,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                  Text(
                    'الوقت المتبقي',
                    style: TextStyle(
                      fontSize: 13,
                      color: const Color(0xffffffff),
                      height: 1.2777777777777777,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  )
                ],),
              color: const Color(0xff182061),
            ),
            Container(
              width: double.infinity,
              height: 183,
              child: ImageSlideshow(
                initialPage: 0,
                indicatorBackgroundColor: Colors.grey,
                indicatorColor: Colors.white,
                isLoop: false,
                //autoPlayInterval: 3000,
                children: [
                  Container(
                    width: double.infinity,
                    height: 183,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/ar_banner-01 (11).png"),
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    height: height*(100/height),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/ar_banner-01 (11).png"),
                        )),
                  ),

                ],
              ),
            ),

            //todo Selections for you
            Container(
              margin: EdgeInsets.all(10),
              child:Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'عرض الكل',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xffcc9d1a),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                    Text(
                      'مختارات من اجلك',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xff182061),
                        height: 0.8846153846153846,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: width*(149/width),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffF1F1F2),
                                child: Icon(Icons.favorite_border_outlined,color: Colors.grey,),
                              )),
                          Image.asset("images/6234304_web2_prod_normal_2.png"),
                          Text(

                            'بانيو ريما من لامار صنع\nفي السعودية - ابيض',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0xff182061),
                              height: 1.4,
                            ),
                            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.right,
                            softWrap: false,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Discount
                                Row(
                                  children: [
                                    Text(
                                      'درهم',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff737895),
                                        height: 1.4285714285714286,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                    SizedBox(width: 3,),
                                    Text(
                                      '300',
                                      style: TextStyle(
                                        fontFamily: 'abuhijlahlight',
                                        fontSize: 12,
                                        color: const Color(0xff737895),
                                        height: 1,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                  ],
                                ),

                                // salary & currency
                                Row(
                                  children: [
                                    Text(
                                      'درهم',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xffe8333a),
                                        height: 1.4285714285714286,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                    SizedBox(width: 3,),
                                    Text(
                                      '200',
                                      style: TextStyle(
                                        fontFamily: 'abuhijlahlight',
                                        fontSize: 12,
                                        color: const Color(0xffe8333a),
                                        height: 1,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(width: 1.0, color: const Color(0xffe0e1ea)),
                      ),
                    )
                  ],
                )
              ],),
            ),

          ],
        ),
      );
    }, listener: (context,state){});

  }
}
