import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/facility_overview.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.router.push(const LiveCameraView());
          },
          backgroundColor: MyColors.authContainerColor,
          child: Icon(
            Icons.question_mark_outlined,
            color: MyColors.blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('Kayıtlı Dikey Tarım Merkezleriniz'),
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
    );
  }
}
