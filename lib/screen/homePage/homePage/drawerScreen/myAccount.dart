import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';
import 'package:santos/componnet/componnent.dart';

import '../../../../componnet/componnetAuth.dart';
class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      AppCubit cubit = BlocProvider.of(context);
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height:height*(110/height) ,
              child: Column(
                children: [
                  SizedBox(height: 55,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10),child:goToChat(context),),

                      Text(
                        'حسابي',
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
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 20,),
                      Text(
                        'المعلومات الاساسية',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xff182061),
                          height: 0.7586206896551724,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 20,),
                      // user name textFormField
                      defaultTextFormFieldMyAccount(labelName: "اسم المستخدم", labelStar: "", hint: "مصطفي خالد",readOnly: true,suffix: Icon(Icons.person,color: Colors.grey,)),
                      SizedBox(height: 10,),
                      // phone textFormField
                      defaultTextFormFieldMyAccount(labelName: "رقم الجوال", labelStar: "", hint: "00123456789",readOnly: true),
                      SizedBox(height: 10,),
                      // email textFormField
                      defaultTextFormFieldMyAccount(labelName: "البريد الإلكتروني", labelStar: "", hint: "username@email.com",readOnly: true,suffix: Icon(Icons.email,color: Colors.grey,)),
                      SizedBox(height: 20,),
                      Text(
                        'تغيير كلمة المرور',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xff182061),
                          height: 0.7586206896551724,
                        ),
                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                      SizedBox(height: 20,),
                      // password Naw
                      defaultNewTextFormField(labelName: "كلمة المرور الحالية", labelStar: "*", hint: "ادخل كلمة المرور الحالية",labelTextColor: Color(0xff182061),suffix: InkWell(
                          onTap: (){
                            cubit.changePasswordNaw("passwordNaw");
                          },
                          child: Icon(cubit.passwordNaw==true?Icons.visibility_off:Icons.visibility,color: Colors.grey,)),obscureText: cubit.passwordNaw),
                      // password New
                      defaultNewTextFormField(labelName: "كلمة المرور الجديدة", labelStar: "*", hint: "ادخل كلمة المرور الجديدة",labelTextColor: Color(0xff182061),suffix: InkWell(
                          onTap: (){
                            cubit.changePasswordNaw("passwordNew");
                          },
                          child: Icon(cubit.passwordNew==true?Icons.visibility_off:Icons.visibility,color: Colors.grey,)),obscureText: cubit.passwordNew),
                      // passwordNewAgain
                      defaultNewTextFormField(labelName: "تأكيد كلمة المرور", labelStar: "*", hint: "ادخل تأكيد كلمة المرور",labelTextColor: Color(0xff182061),suffix: InkWell(
                          onTap: (){
                            cubit.changePasswordNaw("passwordNewAgain");
                          },
                          child: Icon(cubit.passwordNewAgain==true?Icons.visibility_off:Icons.visibility,color: Colors.grey,)),obscureText: cubit.passwordNewAgain),
                      SizedBox(height: 30,)

                    ],
                  ),
                )),
            defaultContainer(text: "حفظ", context: context)

          ],),
        ),

      );

    }, listener: (context,state){});
  }
}
