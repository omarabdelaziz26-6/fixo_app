import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import 'package:santos/modelUi/details_service.dart';
import 'package:santos/modelUi/subService.dart';

import '../componnet/componnent.dart';
import '../componnet/componnetAuth.dart';

import '../modelUi/mainService.dart';

class Service_Request_2 extends StatelessWidget {
  const Service_Request_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int mainActiveIdx =0;

    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      AppCubit cubit = BlocProvider.of(context);

      return  Scaffold(
        bottomNavigationBar: Container(
          width: double.infinity,
          height: height*(85/height),
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "ConfirmAddressAndTime");
                  },
                  child: Container(
                    width: width*(143/width),
                    height: height*(43/height),
                    child: Center(
                      child: Text(
                        'التالي',
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
                            height: 3
                          ),
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'سعر الخدمة',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: (){
                              showDialog<void>(

                                barrierDismissible: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return  Container(
                                    height: double.infinity,
                                    margin: EdgeInsets.only(top: height*(80/height)),
                                    padding: EdgeInsets.only(left: 120,top: 130),
                                    width: double.infinity,
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        SizedBox(height: 200,),
                                        Padding(
                                          padding: const EdgeInsets.all(0),
                                          child:  Container(
                                            height: 200,
                                            width: MediaQuery.of(context).size.width,
                                            color: Colors.purple.withOpacity(0),
                                            child: Column(
                                              children: <Widget>[
                                                const  DefaultTextStyle(
                                                  style:  TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                  child:  Text(
                                                    'لقد قمت باختيار خدمات غير مسعره \nو سيتم تسعيرها بعد معاينة الفني',

                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                SizedBox(height: 10,),

                                                Container(
                                                  height: 32,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                    gradient:const LinearGradient(
                                                      begin: Alignment(-0.677, 0.0),
                                                      end: Alignment(0.572, 0.0),
                                                      colors: [
                                                        Color(0xfff4b504),
                                                        Color(0xffffd04d)
                                                      ],
                                                      stops: [0.0, 1.0],
                                                    ),
                                                    borderRadius: BorderRadius.circular(4.0),
                                                  ),
                                                  child:const DefaultTextStyle(
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color:  Color(0xff182061),
                                                    ),
                                                    child:  Text(
                                                      'فهمت',

                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10,),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: ImageIcon(AssetImage("images/Icon ionic-md-information-circle-outline.png"),size: 15,)),
                        SizedBox(width: 5,),
                        Text(
                          'السعر بعد المعاينة',
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
                    Text(
                      'السباكة : اقل سعر 30 درهم',
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xff8b6f19),
                        height: 1.0952380952380953,
                      ),
                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    )
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
          child: Column(
            children: [
              Container(
                width: width,

                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        goToChat(context),
                        Text(
                          'طلب خدمة',
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color(0xffffca34),
                            height: 0.8846153846153846,
                          ),
                          textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),

                        arrowBack(context: context)
                      ],
                    ),

                    CarouselSlider.builder(
                        itemCount: mainServiceUIList.length,
                        itemBuilder: (ctx, idx, _) {
                          return Container(
                              width: 500,
                              height: 500,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    mainServiceUIList[idx].image,
                                    width: 40,
                                    height: 40,
                                    color: (mainActiveIdx != idx)
                                        ? Colors.white10
                                        : null,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    mainServiceUIList[idx].name,
                                    style: TextStyle(
                                        color: (mainActiveIdx != idx)
                                            ? Colors.white10
                                            : Colors.black),
                                  )
                                ],
                              ),
                              decoration: (mainActiveIdx == idx)
                                  ? BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white)
                                  : BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  shape: BoxShape.circle));
                        },
                        options: CarouselOptions(
                            viewportFraction: 0.3,
                            enableInfiniteScroll: false,
                            autoPlay: false,
                            clipBehavior: Clip.hardEdge,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (idx, reason) {
                              mainActiveIdx = idx;
                              cubit.mainServicesSliderChanged(idx);
                            },
                            initialPage: mainActiveIdx)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 0),
                      child: CarouselIndicator(
                        cornerRadius: 10,
                        width: 10,
                        height: 10,
                        count: mainServiceUIList.length,
                        index: mainActiveIdx,
                      ),
                    ),
                    SizedBox(height: 20,),

                  ]


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

              InkWell(
                onTap: (){
                  createShowBottomSheet(context, height, width);
                },
                child: Text(
                  'الخدمة',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xff182061),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
              ),
              SizedBox(height: 10,),
              // todo sub service
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    ...subServiceListNew.map((e) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                cubit.changeContainerColor(e.id);

                              },
                              child: Container(
                                width: width*(84/width),
                                height: height*(84/height),
                                child: ImageIcon(AssetImage(e.iconImage,),size: 5,color: cubit.containerSelected.contains(e.id)?Color(0xffffffff):Color(0xff182061),),
                                decoration: BoxDecoration(
                                  color:cubit.containerSelected.contains(e.id)?Color(0xff182061):Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(4.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x0d000000),
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),

                            Text(
                              '${e.name}',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff36393b),
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            )
                          ],
                        ),
                      );

                    }).toList()
                  ],
                ),
              ),
              SizedBox(height: 20,),
               // just divider
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.grey,width: double.infinity,height: .5,),
              SizedBox(height: 15,),

              Text(
                'تفاصيل الخدمة',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xff182061),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5,),
              // todo details service
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                  ...DetailsServiceList.map((e) {
                    return InkWell(
                      onTap: (){
                        cubit.changeContainerSelectedDetailsService(e.id);
                      },
                      child: Container(
                        width: width*(141/width),
                        height: height*(35/height),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Center(
                          child: Text(
                            e.name,
                            style: TextStyle(
                              fontSize: 16,
                              color: cubit.containerSelectedDetailsService.contains(e.id)?Color(0xffffffff):Color(0xff182061),                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:cubit.containerSelectedDetailsService.contains(e.id)?Color(0xff182061):Color(0xffffffff),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                      ),
                    );

                  }).toList(),

                ],),
              ),

              SizedBox(height: 15,),

              // todo textFormField from typing problem
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child:
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    showCursor: false,
                    style: TextStyle(fontSize: 20,color: Color(0xfff3ba35)),
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "اكتب وصف المشكلة",
                      hintStyle: TextStyle(fontSize: 15),
                      suffixIcon:
                      Padding(
                        padding:  EdgeInsets.only(top: height*(120/height)),
                        child: Icon(Icons.camera_alt,color: Color(0xfff3ba35),),
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0)
                        ),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0)
                        ),
                      )


                    ),

                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e1ea),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              SizedBox(height: 20,),
              // just divider
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.grey,width: double.infinity,height: .5,),
              SizedBox(height: 15,),
              Text(
                'حدد الكمية',
                style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xff182061),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
               // todo حدد الكمية  + or - button
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
                      '2',
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
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(21.0),
                ),
              ),
              SizedBox(height: 15,),
              // just divider
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.grey,width: double.infinity,height: .5,),
              SizedBox(height: 15,),
              // todo هل تريد ادوات مع الطلب
              Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: [
                  SizedBox(height: 10,),
                  Text(
                    'هل تريد ادوات مع الطلب',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff182061),
                      height: 0.92,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 18,),

                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: height*(32/height),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                'لا أريد',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: const Color(0xff182061),
                                ),
                                textAlign: TextAlign.center,
                                softWrap: false,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xfff1f1f2),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          height: height*(32/height),
                          child: Center(
                            child: Text(
                              'شينيور',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff182061),
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xfff1f1f2),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          height: height*(32/height),

                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              'شاكوش',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff182061),
                              ),
                              textAlign: TextAlign.center,
                              softWrap: false,
                            ),
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xfff1f1f2),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                ],),
                decoration: BoxDecoration(
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
              ),
              SizedBox(height: 20,),
              // todo هل تريد مع الفني معدات اخرى
              Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: [
                  SizedBox(height: 10,),
                  Text(
                    'هل تريد مع الفني معدات اخرى',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xff182061),
                      height: 0.92,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 18,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height*(32/height),
                        width: width*(89/width),
                        child: Center(
                          child: Text(
                            'لا',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff182061),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f1f2),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                     SizedBox(width: 10,),
                      Container(
                        height: height*(32/height),
                        width: width*(89/width),

                        child: Center(
                          child: Text(
                            'نعم',
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color(0xff182061),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),

                        decoration: BoxDecoration(
                          color: const Color(0xfff1f1f2),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),

                ],),
                decoration: BoxDecoration(
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
              ),
              SizedBox(height: 20,),

              // todo textFormField from أكتب المعدات التي تحتجها
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child:
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    showCursor: false,
                    style: TextStyle(fontSize: 20,color: Color(0xfff3ba35)),
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: "أكتب المعدات التي تحتجها",
                        hintStyle: TextStyle(fontSize: 15),
                        suffixIcon:
                        Padding(
                          padding:  EdgeInsets.only(top: height*(120/height)),
                          child: Icon(Icons.camera_alt,color: Color(0xfff3ba35),),
                        ),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0)
                          ),
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0)
                          ),
                        )


                    ),

                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffe0e1ea),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              SizedBox(height: 20,),



            ],
          ),
        ),
      );
    }, listener: (context,state){});
  }
  // bottom sheet and alert dialog
     alertDialog(BuildContext context,double height)=>showDialog(context: context, builder: (_){
       return AlertDialog(
         content: Container(
           width: double.infinity,
           child: Column(
             mainAxisSize: MainAxisSize.min,

             children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 InkWell(
                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: CircleAvatar(child: Center(child: Icon(Icons.close_rounded,size: 15,color: Colors.black,)),radius: 10,backgroundColor: Colors.black12,)),
                 Text("")
               ],
             ),
             Image.asset("images/logofixo3.png",width: 100,height: 100,),
             SizedBox(height: 5,),
             Text(
               'الخدمة تشمل تركيب أو تغيير مرواح شفط دورات المياه بجديدة من دون المواد',
               style: TextStyle(
                 fontSize: 15,
                 color: const Color(0xff182061),
                 height: 1.2,
               ),
               textAlign: TextAlign.center,
             ),
             SizedBox(height: 5,),

             Text.rich(
               TextSpan(
                 style: TextStyle(
                   fontSize: 15,
                   color: const Color(0xffe8333a),
                   height: 1.2,
                 ),
                 children: [
                   TextSpan(
                     text: 'خصم ',
                   ),
                   TextSpan(
                     text: '10',
                     style: TextStyle(
                       fontSize: 14,
                     ),
                   ),
                   TextSpan(
                     text: '% على الخدمة لأكثر من 10',
                   ),
                 ],
               ),
               textAlign: TextAlign.center,
             )
           ],),
           decoration: BoxDecoration(
             color: const Color(0xffffffff),
             borderRadius: BorderRadius.circular(10.0),
           ),
         ),
       );
     });
  // 2-
  createShowBottomSheet(BuildContext context, double height, double width) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      )),
        isScrollControlled: true,
        context: context, builder: (_){
      return Container(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10,),
            Image.asset("images/logofixo3.png",width: 100,height: 100,),
            SizedBox(height: 6,),
            Text(
              'سعر الخدمات المطلوبة اقل من الحد الادنى',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff182061),
                height: 0.92,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(height: 6,),
            Text(
              'اقل سعر لخدمة ( السباكة )',
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xff676e9e),
                height: 1,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(height: 6,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                'درهم',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xffe8333a),
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 3,),
              Text(
                '70',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xffe8333a),
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],),
            SizedBox(height: 6,),
            Text(
              'يرجى العلم عند الضغط على متابعة سيتم محاسبتك على سعر الحد الادنى',
              style: TextStyle(
                fontSize: 13,
                color: const Color(0xffe8333a),
                height: 0.8181818181818182,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
            SizedBox(height: 6,),
            Row(children: [
              Expanded(
                child: Container(
                  height: height*(48/height),
                  child:
                  Center(
                    child: Text(
                      'إضافة خدمة',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff182061),
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.7, 0.0),
                      end: Alignment(0.594, 0.134),
                      colors: [const Color(0xfff4b504), const Color(0xffffd04d)],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: height*(48/height),
child:
Center(
  child:   Text(
    'متابعة',
    style: TextStyle(
      fontSize: 15,
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
            ],)

        ],),
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      );
    });
  }


}
