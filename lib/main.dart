import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/business_logic_component/registrtion/registration_cubit.dart';
import 'package:santos/data/repository/registration_repositorys.dart';
import 'package:santos/screen/Select%20_your_location.dart';
import 'package:santos/screen/auth/first_screen.dart';
import 'package:santos/screen/auth/forgetPasswordEnterNewPassword.dart';
import 'package:santos/screen/auth/forgetPasswordSendEmail.dart';
import 'package:santos/screen/auth/forgetPassword_otb.dart';
import 'package:santos/screen/auth/login.dart';
import 'package:santos/screen/auth/otp_Screen_Next_SignUp.dart';
import 'package:santos/screen/auth/signUp.dart';
import 'package:santos/screen/confirmAddressAndTime.dart';
import 'package:santos/screen/fXO%20_market/FXOMarket.dart';
import 'package:santos/screen/homeLayout.dart';
import 'package:santos/screen/homePage/homePage/drawerScreen/ShareAndEarnCredits.dart';
import 'package:santos/screen/homePage/homePage/drawerScreen/SupportAndSupport.dart';
import 'package:santos/screen/homePage/homePage/drawerScreen/privacyPolicy.dart';
import 'package:santos/screen/homePage/homePage/drawerScreen/savedTitles.dart';
import 'package:santos/screen/homePage/homePage/drawerScreen/userAgreement.dart';
import 'package:santos/screen/homePage/homePage/drawerScreen/whoAreWe.dart';
import 'package:santos/screen/homePage/offers/nextOfferScreen.dart';
import 'package:santos/screen/homePage/order/OrderNumber/Your_request_has_been_accepted.dart';
import 'package:santos/screen/homePage/order/OrderNumber/you_have_the_technician.dart';
import 'package:santos/screen/homePage/wallet/Operationsdetails.dart';
import 'package:santos/screen/instantChat.dart';
import 'package:santos/screen/locationDetails.dart';
import 'package:santos/screen/notifications.dart';
import 'package:santos/screen/paying_off.dart';

import 'bloc/cubit.dart';
import 'data/web_services/registrations.dart';
import 'screen/homePage/homePage/drawerScreen/myAccount.dart';
import 'screen/homePage/wallet/CardManagement.dart';
import 'screen/service_Request_2.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegistrationOperations registrationOperations = RegistrationOperations();
     RegistrationRepository registrationRepository = RegistrationRepository(registrationOperations) ;

    return MultiBlocProvider(
        providers: [

        BlocProvider<AppCubit>(create: (BuildContext context)=>AppCubit(),),
        BlocProvider<RegistrationCubit>(create: (BuildContext context)=>RegistrationCubit(registrationRepository),),

      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Dubai-Medium"
        ),
        routes: {

          "signUp":(context)=>SignUp(),
          "loginScreen":(context)=>LogIn(),
          "forgetPasswordSendEmail":(context)=>ForgetPasswordSendEmail(),
          "forgetPassword_otb":(context)=>ForgetPassword_otb(),
          "forgetPasswordEnterNewPassword":(context)=>ForgetPasswordEnterNewPassword(),
          "Otp_Next_SignUp":(context)=>Otp_Next_SignUp(),
          "Select_your_location":(context)=>Select_your_location(),
          "LocationDetails":(context)=>LocationDetails(),
          "HomeLayout":(context)=>HomeLayout(),
          "OperationsDetails":(context)=>OperationsDetails(),
          "CardManagement":(context)=>CardManagement(),
          "MyAccount":(context)=>MyAccount(),
          "SavedTitles":(context)=>SavedTitles(),
          "SupportAndSupport":(context)=>SupportAndSupport(),
          "Chat":(context)=>Chat(),
          "Service_Request_2":(context)=>Service_Request_2(),
          "WhoAreWe":(context)=>WhoAreWe(),
          "UserAgreement":(context)=>UserAgreement(),
          "PrivacyPolicy":(context)=>PrivacyPolicy(),
          "Notifications":(context)=>Notifications(),
          "ConfirmAddressAndTime":(context)=>ConfirmAddressAndTime(),
          "NextOfferScreen":(context)=>NextOfferScreen(),
          "ShareAndEarnCredits":(context)=>ShareAndEarnCredits(),
          "FixoMarket":(context)=>FixoMarket(),
          "Your_request_has_been_accepted_screen":(context)=>Your_request_has_been_accepted_screen(),
          "you_have_the_technician":(context)=>you_have_the_technician(),
          "Paying_off":(context)=>Paying_off(),

        },
        home: FirstScreen(),
      )
    );
  }
}
