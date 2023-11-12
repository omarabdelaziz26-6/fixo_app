import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/cubit.dart';
import 'package:santos/bloc/state.dart';

class GuaranteeOrder extends StatelessWidget {

  GuaranteeOrder({Key? key}) : super(key: key) {

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
        ],
      ),
    );
  }


}
