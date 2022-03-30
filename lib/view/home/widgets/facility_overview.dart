import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/core/constants/color_constants.dart';
import 'package:agriverts/core/constants/text_constants.dart';
import 'package:agriverts/product/models/facility_model.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:agriverts/product/widgets/custom_fade_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FacilityOverview extends StatelessWidget {
  final FacilityModel data;
  final String imgUrl;
  const FacilityOverview({Key? key, required this.data,required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(FacilityDetail(facilityName: data.facilityName));
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 80,
        decoration: BoxDecoration(
          color: MyColors.authContainerColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomFadeInImage(imgUrl: imgUrl,borderRadius: AppConstant.symmetricRadius),
            Text(data.facilityName,style: TextStyle(fontSize: 18),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(TextConstants.stat),
                SizedBox(height: 5,),
                CircleAvatar(
                  backgroundColor: data.status ? Colors.green : Colors.red,
                  radius: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

