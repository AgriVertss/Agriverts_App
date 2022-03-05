import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FacilityOverview extends StatelessWidget {
  const FacilityOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(FacilityDetail(facilityName: 'Facilityt 1'));
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 100,
        decoration: BoxDecoration(
          color: MyColors.authContainerColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: AppConstant.symmetricRadius,
              child: Image.network(
                AppConstant.splashImagePath,
                fit: BoxFit.cover,
              ),
            ),
            Text('Tarla'),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 15,
            ),
          ],
        ),
      ),
    );
  }
}
