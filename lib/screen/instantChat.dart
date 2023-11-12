import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';

import '../componnet/componnetAuth.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AppCubit,AppState>(builder: (context,state){
      // AppCubit cubit = BlocProvider.of(context);
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: height * (110 / height),
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("       "),
                        Text(
                          'محادثة فورية',
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
              SizedBox(
                height: 100,
              ),
              Image.asset(
                "images/fixologoforchat.png",
                width: 92,
                height: 82,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'كيف يمكننا مساعدتك قم ببدء المحادثة\nللحصول على مساعده',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xff182061),
                  height: 1.5,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: height * (77 / height),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xff182061),
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Icon(
                      Icons.send,
                      size: 20,
                      color: Colors.white,
                    )),
              ),
              Container(
                width: width * (292 / width),
                height: 44,
                padding: EdgeInsets.only(left: 10, right: 15),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.emoji_emotions,
                            color: Color(0xff68551A),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.camera_alt, color: Color(0xff68551A)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            showCursor: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "اكتب هنا....",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0x75ffffff),
                  borderRadius: BorderRadius.circular(22.0),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: const Color(0xfffcb70a),
            boxShadow: [
              BoxShadow(
                color: const Color(0x0d000000),
                offset: Offset(0, -5),
                blurRadius: 6,
              ),
            ],
          ),
        ),
      );
    }, listener: (context,state){});
  }
}
