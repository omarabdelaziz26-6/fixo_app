import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../bloc/cubit.dart';
import '../../../componnet/componnent.dart';
import '../../../modelUi/mainService.dart';

class OfferScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  OfferScreen({required this.scaffoldKey, required this.cubit});
  final AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    int mainActiveIdx = 0;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 44,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //todo text notification Number
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  // you can see notificationButton in component dartFile
                  child: notificationButton(context),
                ),

                Text(
                  'عروض وخصومات',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xffffca34),
                    height: 2.8518518518518519,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                // Drawer
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: InkWell(
                      onTap: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Image.asset(
                        "images/Icon_menu.png",
                        width: 25,
                        height: 25,
                      )),
                ),
              ],
            ),
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
                          color: (mainActiveIdx != idx) ? Colors.white10 : null,
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
                            shape: BoxShape.circle, color: Colors.white)
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
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "NextOfferScreen");
            },
            child: Container(
              width: double.infinity,
              height: height * (154 / height),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/Mask Group 24.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          Container(
            width: double.infinity,
            height: height * (154 / height),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Mask Group 24.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            width: double.infinity,
            height: height * (154 / height),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Mask Group 24.png"),
                    fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
