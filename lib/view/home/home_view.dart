import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/product/cubits/homeCubit/home_cubit.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/facility_overview.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: buildFBA(context),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  AppConstant.homeWelcome + ' Alper',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    AppConstant.homeTitle,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return FacilityOverview();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SpeedDial buildFBA(BuildContext context) {
    return SpeedDial(
      children: [
        SpeedDialChild(
          child: const Icon(Icons.remove_circle),
          label: 'Kaldır',
          backgroundColor: Colors.red,
          onTap: () {/* Do something */},
        ),
        SpeedDialChild(
          child: const Icon(Icons.add),
          label: 'Yeni Ekle',
          backgroundColor: Colors.green,
          onTap: () {/* Do something */},
        ),
        SpeedDialChild(
          child: const Icon(Icons.question_mark_sharp),
          label: 'SSS',
          backgroundColor: Colors.amberAccent,
          onTap: () {
            context.router.push(SSSView());
          },
        ),
      ],
      activeLabel: Text('More'),
      backgroundColor: Colors.greenAccent,
      icon: Icons.more_vert_rounded,
    );
  }
}
