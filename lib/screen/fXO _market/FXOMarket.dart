import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import 'package:santos/screen/fXO%20_market/shopping_cart.dart';

import 'Market_Categories.dart';
import 'WishList.dart';
import 'home_screen.dart';
import 'more_screen/more_screen.dart';

class FixoMarket extends StatelessWidget {
  const FixoMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> screen = [
      MoreScreen(),
      WishList(),
      Shopping_Cart(),
      MarketCategory(),
      HomeScreenFixoMarket(),
    ];
    return BlocConsumer<AppCubit,AppState>(builder:

        (context,state){
          AppCubit cubit = BlocProvider.of(context);
          return Scaffold(
          backgroundColor: Color(0xffF3F4F6),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xfff3ba35),
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.currentIndex_FixoMarket,
            onTap: (e){
              cubit.changeCurrentIndex_FixoMARKET(e);
            },
            selectedItemColor: Color(0xff182061),
            unselectedItemColor: Color(0xff68551A),
            selectedFontSize: width*(12/width),
            unselectedFontSize: width*(10/width),

            items: [
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("images/moreicon.png",)),label: "المزيد",backgroundColor: Color(0xfff3ba35)),
              BottomNavigationBarItem(icon:cubit.currentIndex_FixoMarket==1?Icon(Icons.favorite,color: Color(0xff182061),):ImageIcon(AssetImage("images/Icon awesome-heart.png")),label: "قائمة الأمنيات", ),
              BottomNavigationBarItem(icon:cubit.currentIndex_FixoMarket==2?Icon(Icons.shopping_cart,color: Color(0xff182061),):ImageIcon(AssetImage("images/shopping-cart.png")),label: "عربة التسوق" ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("images/Group 38611.png")),label: "الفئات" ),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage("images/marketicon.png")),label: "السوق" ),

            ],
          ),
          body:screen[cubit.currentIndex_FixoMarket]
      );
    }, listener: (context,state){});
  }
}
