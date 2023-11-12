import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/state.dart';

import '../../../bloc/cubit.dart';

class FinishedOrder extends StatelessWidget {

  FinishedOrder({Key? key}) : super(key: key) {

  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return BlocListener<AppCubit, AppState>(
      listener: (context, state) {
      },
      child: Column(
        children: [


          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }


}
