import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:santos/bloc/state.dart';

import '../../../bloc/cubit.dart';
import '../../../componnet/orderComponnent.dart';

class CurrentOrders extends StatelessWidget {
  CurrentOrders({Key? key}) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BlocListener<AppCubit, AppState>(
      listener: (context, state) {},
      child: Column(
        children: [
          you_have_the_technician(context: context, width: width, height: height, dateAndTime: "", orderNumber: "5555555", orderType: "", technicianName: "", salary: 50, distance: 20, rate: 4,how_many_requests: "5"),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
